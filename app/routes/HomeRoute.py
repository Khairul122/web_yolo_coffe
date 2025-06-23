from flask import Blueprint, render_template
from app.models.InfoModel import Info

home_bp = Blueprint('home', __name__)

@home_bp.route('/')
def index():
    articles = Info.query.all()
    return render_template('index.html', articles=articles)