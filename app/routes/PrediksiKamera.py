from flask import Blueprint, render_template, Response, jsonify, request
import cv2
import threading
from ultralytics import YOLO
from app.models.InfoModel import Info
import time
import os

prediksi_bp = Blueprint('prediksi', __name__, url_prefix='/prediksi')

class CameraManager:
    def __init__(self):
        self.camera = None
        self.is_running = False
        self.frame = None
        self.lock = threading.Lock()
        
    def start_camera(self):
        if not self.is_running:
            self.camera = cv2.VideoCapture(0)
            self.is_running = True
            threading.Thread(target=self.capture_frames, daemon=True).start()
    
    def stop_camera(self):
        self.is_running = False
        if self.camera:
            self.camera.release()
            self.camera = None
    
    def capture_frames(self):
        while self.is_running and self.camera:
            ret, frame = self.camera.read()
            if ret:
                with self.lock:
                    self.frame = frame
            time.sleep(0.03)
    
    def get_frame(self):
        with self.lock:
            return self.frame.copy() if self.frame is not None else None

class YOLODetector:
    def __init__(self, model_path):
        self.model = YOLO(model_path)
        self.current_info = None
        self.last_detection = None
        
    def detect(self, frame):
        if frame is None:
            return frame, self.current_info
            
        results = self.model(frame, verbose=False)
        
        for result in results:
            boxes = result.boxes
            if boxes is not None:
                for box in boxes:
                    confidence = float(box.conf[0])
                    if confidence > 0.7:
                        class_id = int(box.cls[0])
                        class_name = self.model.names[class_id]
                        
                        if self.last_detection != class_name:
                            self.last_detection = class_name
                            info_data = Info.query.filter_by(kategori=class_name).first()
                            if info_data:
                                self.current_info = {
                                    'kategori': info_data.kategori,
                                    'keterangan': info_data.keterangan,
                                    'foto': info_data.foto
                                }
                        
                        x1, y1, x2, y2 = map(int, box.xyxy[0])
                        cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
                        label = f"{class_name}: {confidence:.2f}"
                        cv2.putText(frame, label, (x1, y1-10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
                        break
        
        return frame, self.current_info

camera_manager = CameraManager()
model_path = os.path.join('app', 'static', 'model_coffe.pt')
yolo_detector = YOLODetector(model_path)

@prediksi_bp.route('/')
def index():
    return render_template('prediksi_kamera.html')

@prediksi_bp.route('/start_camera', methods=['POST'])
def start_camera():
    camera_manager.start_camera()
    return jsonify({'status': 'Camera started'})

@prediksi_bp.route('/stop_camera', methods=['POST'])
def stop_camera():
    camera_manager.stop_camera()
    return jsonify({'status': 'Camera stopped'})

@prediksi_bp.route('/video_feed')
def video_feed():
    def generate():
        while camera_manager.is_running:
            frame = camera_manager.get_frame()
            if frame is not None:
                processed_frame, _ = yolo_detector.detect(frame)
                
                ret, buffer = cv2.imencode('.jpg', processed_frame)
                if ret:
                    frame_bytes = buffer.tobytes()
                    yield (b'--frame\r\n'
                           b'Content-Type: image/jpeg\r\n\r\n' + frame_bytes + b'\r\n')
            time.sleep(0.03)
    
    return Response(generate(), mimetype='multipart/x-mixed-replace; boundary=frame')

@prediksi_bp.route('/get_detection_info')
def get_detection_info():
    if yolo_detector.current_info:
        return jsonify(yolo_detector.current_info)
    return jsonify({})