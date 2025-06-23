from flask import Blueprint, render_template, Response, jsonify
import cv2
import threading
from ultralytics import YOLO
import time

prediksi_bp = Blueprint('prediksi', __name__, url_prefix='/prediksi')

model = None
camera_running = False
processed_frame = None
lock = threading.Lock()

def load_model():
    global model
    try:
        model = YOLO('app/static/model/model_coffe.pt')
        return True
    except:
        return False

def camera_thread():
    global camera_running, processed_frame
    
    cap = cv2.VideoCapture(0)
    
    while camera_running:
        ret, frame = cap.read()
        if ret and model:
            results = model(frame, verbose=False)
            annotated_frame = results[0].plot()
            
            with lock:
                processed_frame = annotated_frame.copy()
        
        time.sleep(0.03)
    
    cap.release()

load_model()

@prediksi_bp.route('/')
def index():
    return render_template('prediksi_kamera.html')

@prediksi_bp.route('/model_status')
def model_status():
    return jsonify({'loaded': model is not None})

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
                        yield (b'--frame\r\n'
                               b'Content-Type: image/jpeg\r\n\r\n' + buffer.tobytes() + b'\r\n')
            time.sleep(0.03)
    
    return Response(generate(), mimetype='multipart/x-mixed-replace; boundary=frame')