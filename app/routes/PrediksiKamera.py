from flask import Blueprint, render_template, Response, jsonify, request
import cv2
import threading
from ultralytics import YOLO
from app.models.InfoModel import Info
import time
import os

prediksi_bp = Blueprint('prediksi', __name__, url_prefix='/prediksi')

model = None
camera = None
camera_running = False
current_frame = None
processed_frame = None
current_info = None
lock = threading.Lock()

def load_model():
    global model
    try:
        model_path = os.path.join('app', 'static', 'model', 'model_coffe.pt')
        if os.path.exists(model_path):
            model = YOLO(model_path)
            return True
        else:
            return False
    except Exception as e:
        print(f"Error: {e}")
        return False

def camera_thread():
    global camera, camera_running, current_frame, processed_frame, current_info
    
    camera = cv2.VideoCapture(0)
    
    while camera_running:
        ret, frame = camera.read()
        if ret:
            with lock:
                current_frame = frame.copy()
                
            if model:
                try:
                    results = model(frame, verbose=False)
                    for result in results:
                        boxes = result.boxes
                        if boxes is not None:
                            for box in boxes:
                                confidence = float(box.conf[0])
                                if confidence > 0.7:
                                    class_id = int(box.cls[0])
                                    class_name = model.names[class_id]
                                    
                                    x1, y1, x2, y2 = map(int, box.xyxy[0])
                                    cv2.rectangle(frame, (x1, y1), (x2, y2), (0, 255, 0), 2)
                                    label = f"{class_name}: {confidence:.2f}"
                                    cv2.putText(frame, label, (x1, y1-10), cv2.FONT_HERSHEY_SIMPLEX, 0.5, (0, 255, 0), 2)
                                    
                                    info_data = Info.query.filter_by(kategori=class_name).first()
                                    if info_data:
                                        current_info = {
                                            'kategori': info_data.kategori,
                                            'keterangan': info_data.keterangan,
                                            'foto': info_data.foto
                                        }
                                    break
                except Exception as e:
                    pass
            
            with lock:
                processed_frame = frame.copy()
        
        time.sleep(0.03)
    
    if camera:
        camera.release()

load_model()

@prediksi_bp.route('/')
def index():
    return render_template('prediksi_kamera.html')

@prediksi_bp.route('/model_status')
def model_status():
    return jsonify({
        'loaded': model is not None,
        'status': 'Model loaded' if model else 'Model not loaded'
    })

@prediksi_bp.route('/start_camera', methods=['POST'])
def start_camera():
    global camera_running
    if model is None:
        return jsonify({'error': 'Model not loaded'}), 400
    
    if not camera_running:
        camera_running = True
        threading.Thread(target=camera_thread, daemon=True).start()
    
    return jsonify({'status': 'Camera started'})

@prediksi_bp.route('/stop_camera', methods=['POST'])
def stop_camera():
    global camera_running
    camera_running = False
    return jsonify({'status': 'Camera stopped'})

@prediksi_bp.route('/video_feed')
def video_feed():
    def generate():
        while camera_running:
            with lock:
                if processed_frame is not None:
                    ret, buffer = cv2.imencode('.jpg', processed_frame)
                    if ret:
                        frame_bytes = buffer.tobytes()
                        yield (b'--frame\r\n'
                               b'Content-Type: image/jpeg\r\n\r\n' + frame_bytes + b'\r\n')
            time.sleep(0.03)
    
    return Response(generate(), mimetype='multipart/x-mixed-replace; boundary=frame')

@prediksi_bp.route('/get_detection_info')
def get_detection_info():
    if current_info:
        return jsonify(current_info)
    return jsonify({})