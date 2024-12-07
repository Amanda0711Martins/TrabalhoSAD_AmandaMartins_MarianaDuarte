from flask import Flask
from controller import register_blueprints  # Importa a função para registrar os blueprints
import database
from dotenv import load_dotenv
import os

# Inicializa o Flask
app = Flask(__name__, static_folder='./view/static', template_folder='./view/templates')
load_dotenv()
app.secret_key = os.getenv('APP_SECRET_KEY')

register_blueprints(app)

if __name__ == "__main__":
    db = database.Database()
    db.setup_database()
    app.run(debug=True)
