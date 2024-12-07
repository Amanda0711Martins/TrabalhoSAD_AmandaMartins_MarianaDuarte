import sys
sys.path.insert(1, '/home/mariana/Documentos/TrabalhoSAD_AmandaMartins_MarianaDuarte/database')
import database

class RecomendacaoDAL:
    def __init__(self):
        self.db = database.Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def criar_recomendacao(self, usuario_id, perfil_usuario_id, mes, tipo_destino, qtd_pessoas, orcamento):
        # Insere a recomendação na tabela 
        query = """
            INSERT INTO recomendacao (usuario_id, perfil_viagem_id, data_recomendacao)
            VALUES (%s, %s, NOW())
        """
        params = (usuario_id, perfil_usuario_id)
        self.db.execute_query(query, params)
        
        # Recupera o ID da recomendação gerada
        query = "SELECT LAST_INSERT_ID()"
        recomendacao_id = self.db.execute_query(query)[0]["LAST_INSERT_ID()"]
        
        # Busca os destinos que atendem aos critérios
        query = """
            SELECT id FROM destino
            WHERE mes_viagem = %s
              AND tipo_destino = %s
              AND numero_pessoas = %s
              AND orcamento <= %s
        """
        params = (mes, tipo_destino, qtd_pessoas, orcamento)
        destinos = self.db.execute_query(query, params)

        # Associa os destinos à recomendação
        for destino in destinos:
            query = """
                INSERT INTO recomendacao_destino (recomendacao_id, destino_id)
                VALUES (%s, %s)
            """
            params = (recomendacao_id, destino["id"])
            self.db.execute_query(query, params)

    def obter_recomendacoes_por_usuario_e_perfil(self, usuario_id,perfil_viagem_id):
        query = """
            SELECT r.id, r.data_recomendacao, p.mes_viagem, p.numero_pessoas, p.orcamento_por_pessoa,
                p.tipo_destino
            FROM  recomendacao r
            JOIN perfil_viagem p ON r.perfil_viagem_id = p.id
            WHERE r.usuario_id = %s AND p.id = %s
        """
        params = (usuario_id, perfil_viagem_id)
        return self.db.execute_query(query, params)

    def obter_destinos_por_recomendacao(self, recomendacao_id):
        query = """
            SELECT d.id, d.nome, d.descricao, i.url
            FROM destino d
            JOIN recomendacao_destino rd ON d.id = rd.destino_id
            JOIN imagem_destino i ON d.imagem_id = i.id
            WHERE rd.recomendacao_id = %s
        """
        params = (recomendacao_id,)
        return self.db.execute_query(query, params)