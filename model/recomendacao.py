from datetime import datetime

class Recomendacao:
    def __init__(self, id, usuario_id, perfil_usuario_id, data_recomendacao):
        self.id = id
        self.usuario_id = usuario_id
        self.perfil_usuario_id = perfil_usuario_id
        self.data_recomendacao = data_recomendacao or datetime.now() 
        self.destinos = [] 

