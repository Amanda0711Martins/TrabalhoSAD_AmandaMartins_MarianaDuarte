from datetime import datetime

class Recomendacao:
    def __init__(self, id, usuario_id, perfil_usuario_id, tipo_recomendacao, data_recomendacao):
        self.id = id
        self.usuario_id = usuario_id
        self.perfil_usuario_id = perfil_usuario_id
        self.tipo_recomendacao = tipo_recomendacao
        self.data_recomendacao = data_recomendacao or datetime.now() 
    
    def getId(self):
        return self.id
    
    def getUsuarioId(self):
        return self.usuario_id
    
    def getPerfilUsuarioId(self):
        return self.perfil_usuario_id
    
    def getTipoRecomendacao(self):
        return self.tipo_recomendacao
    
    def getDataRecomendacao(self):
        return self.data_recomendacao


