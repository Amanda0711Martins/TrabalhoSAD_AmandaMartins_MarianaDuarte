import sys
sys.path.insert(1, '/home/mariana/Documentos/TrabalhoSAD_AmandaMartins_MarianaDuarte/database')
import database

class DestinoDAL:
    def __init__(self):
        self.db = database.Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def obter_destinos(self):
        query = "SELECT * FROM destino"
        return self.db.execute_query(query)
