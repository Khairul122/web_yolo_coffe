from flask import Blueprint, render_template, request, jsonify, send_file
import cv2
import os
from werkzeug.utils import secure_filename
from ultralytics import YOLO
import uuid

upload_bp = Blueprint('upload', __name__, url_prefix='/upload')

UPLOAD_FOLDER = 'app/static/uploads'
RESULT_FOLDER = 'app/static/results'
ALLOWED_EXTENSIONS = {'png', 'jpg', 'jpeg', 'gif', 'bmp'}

if not os.path.exists(UPLOAD_FOLDER):
    os.makedirs(UPLOAD_FOLDER)
if not os.path.exists(RESULT_FOLDER):
    os.makedirs(RESULT_FOLDER)

class ImagePredictor:
    def __init__(self, model_path):
        self.model = YOLO(model_path)
    
    def predict_image(self, image_path):
        results = self.model(image_path, verbose=False)
        detection_info = None
        image = cv2.imread(image_path)
        
        for result in results:
            boxes = result.boxes
            if boxes is not None:
                for box in boxes:
                    conf = float(box.conf[0])
                    if conf > 0.5:
                        class_id = int(box.cls[0])
                        class_name = self.model.names[class_id]
                        
                        detection_info = {
                            'kategori': class_name,
                            'confidence': conf
                        }
                        
                        x1, y1, x2, y2 = map(int, box.xyxy[0])
                        cv2.rectangle(image, (x1, y1), (x2, y2), (0, 255, 0), 3)
                        label = f"{class_name}: {conf:.2f}"
                        cv2.putText(image, label, (x1, y1-10), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 255, 0), 2)
                        break
        
        return image, detection_info

def allowed_file(filename):
    return '.' in filename and filename.rsplit('.', 1)[1].lower() in ALLOWED_EXTENSIONS

model_path = os.path.join('app', 'static', 'model', 'model_coffe.pt')
predictor = None
if os.path.exists(model_path):
    predictor = ImagePredictor(model_path)

@upload_bp.route('/')
def index():
    return render_template('prediksi_gambar.html')

@upload_bp.route('/predict', methods=['POST'])
def predict():
    try:
        if predictor is None:
            return jsonify({'error': 'Model not loaded'}), 500
            
        if 'file' not in request.files:
            return jsonify({'error': 'No file uploaded'}), 400
        
        file = request.files['file']
        if file.filename == '':
            return jsonify({'error': 'No file selected'}), 400
        
        if file and allowed_file(file.filename):
            filename = secure_filename(file.filename)
            unique_filename = f"{uuid.uuid4()}_{filename}"
            filepath = os.path.join(UPLOAD_FOLDER, unique_filename)
            file.save(filepath)
            
            predicted_image, detection_info = predictor.predict_image(filepath)
            
            result_filename = f"result_{unique_filename}"
            result_path = os.path.join(RESULT_FOLDER, result_filename)
            cv2.imwrite(result_path, predicted_image)
            
            response_data = {
                'original_image': f"uploads/{unique_filename}",
                'predicted_image': f"results/{result_filename}",
                'detection_info': detection_info
            }
            
            return jsonify(response_data)
        
        return jsonify({'error': 'Invalid file format'}), 400
    
    except Exception as e:
        return jsonify({'error': str(e)}), 500

@upload_bp.route('/get_image/<path:filename>')
def get_image(filename):
    return send_file(os.path.join('static', filename))

@upload_bp.route('/clear_results', methods=['POST'])
def clear_results():
    try:
        for folder in [UPLOAD_FOLDER, RESULT_FOLDER]:
            for filename in os.listdir(folder):
                file_path = os.path.join(folder, filename)
                if os.path.isfile(file_path):
                    os.remove(file_path)
        return jsonify({'status': 'Results cleared'})
    except Exception as e:
        return jsonify({'error': str(e)}), 500