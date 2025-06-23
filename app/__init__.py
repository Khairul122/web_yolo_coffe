from flask import Flask, redirect, url_for
from app.extension import db
from app.routes import register_routes

def create_app():
    app = Flask(__name__)
    app.secret_key = 'supersecretkey'
    app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:@localhost/db_yolo_kopi'
    app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False

    db.init_app(app)
    register_routes(app)

    @app.route('/')
    def index():
        return redirect(url_for('home.index')) 

    return app