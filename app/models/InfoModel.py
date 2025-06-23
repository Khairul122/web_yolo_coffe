from app.extension import db

class Info(db.Model):
    __tablename__ = 'info'

    id_info = db.Column(db.Integer, primary_key=True)
    kategori = db.Column(db.String(30), nullable=True)
    foto = db.Column(db.String(255), nullable=True)
    keterangan = db.Column(db.Text, nullable=True)

    def __repr__(self):
        return f'<Info {self.kategori}>'