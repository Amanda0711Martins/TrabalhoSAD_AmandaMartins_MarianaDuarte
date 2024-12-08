from database.database import Database
from model import perfilviagem

class PerfilViagemDAL:
    def __init__(self):
        self.db = Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def criar_perfil(self,perfilViagem):
        usuario_id = perfilViagem.getUsuarioId()
        mes = perfilViagem.getMesViagem()
        qtd_pessoas = perfilViagem.getNumeroPessoas()
        orcamento = perfilViagem.getOrcamento()
        tipo_destino = perfilViagem.getTipoDestino()

        query = """
            INSERT INTO perfil_viagem (usuario_id, mes_viagem, numero_pessoas, orcamento_por_pessoa, tipo_destino)
            VALUES (%s, %s, %s, %s, %s)
        """
        params = (usuario_id, mes, qtd_pessoas, orcamento, tipo_destino)
        self.db.execute_query(query, params)
        
        query = "SELECT MAX(id) AS max_id FROM guia_mochileiro_pobre.perfil_viagem"
        result = self.db.execute_query(query)
        perfil_viagem_id = result[0]["max_id"]
        
        if perfil_viagem_id is None or perfil_viagem_id == 0:
            print("Erro: Nenhum ID foi gerado para o perfil de viagem")
            return None
        return perfil_viagem_id
    
    def obter_perfil_por_usuario(self, usuario_id):
        query = "SELECT * FROM perfil_viagem WHERE usuario_id = %s"
        params = (usuario_id,)
        return self.db.execute_query(query, params)
