from flask import Flask
from datetime import datetime
import os

app = Flask(__name__)

@app.route('/')
def home():
    fecha_actual = datetime.now().strftime("%d/%m/%Y")
    return "Paredes Rodríguez Erick Daniel - " + fecha_actual

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000)