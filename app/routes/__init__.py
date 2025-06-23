from flask import Flask
from app.routes.HomeRoute import home_bp
from app.routes.PrediksiKamera import prediksi_bp

def register_routes(app: Flask):
    app.register_blueprint(home_bp)
    app.register_blueprint(prediksi_bp, url_prefix='/prediksi-kamera')