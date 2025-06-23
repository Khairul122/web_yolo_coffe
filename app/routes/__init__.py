from flask import Flask
from app.routes.HomeRoute import home_bp
from app.routes.PrediksiKamera import prediksi_bp
from app.routes.PrediksiGambar import upload_bp

def register_routes(app: Flask):
    app.register_blueprint(home_bp)
    app.register_blueprint(prediksi_bp, url_prefix='/prediksi-kamera')
    app.register_blueprint(upload_bp, url_prefix='/prediksi-gambar')