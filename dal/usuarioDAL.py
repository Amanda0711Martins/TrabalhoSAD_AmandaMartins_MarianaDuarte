import sys
sys.path.insert(1, '/home/mariana/Documentos/TrabalhoSAD_AmandaMartins_MarianaDuarte/database')
import database
import bcrypt

class UsuarioDAL:
    def __init__(self):
        self.db = database.Database()

    def connect(self):
        self.db.connect()

    def close(self):
        self.db.close()

    def gerar_hash_senha(self, senha):
        salt = bcrypt.gensalt()
        return bcrypt.hashpw(senha.encode('utf-8'), salt)

    def verificar_senha(self, senha_fornecida, hash_armazenado):
        return bcrypt.checkpw(senha_fornecida.encode('utf-8'), hash_armazenado)

    def cadastrar_usuario(self, nome, email, senha):
        query = """
            INSERT INTO usuario (nome, email, senha)
            VALUES (%s, %s, %s)
        """
        # Cria o hash da senha
        hash_senha = self.gerar_hash_senha(senha)
        params = (nome, email, hash_senha.decode('utf-8'))  # Armazena como string no banco
        print(query)
        self.db.execute_query(query, params)

    def verificar_email(self, email):
        query = "SELECT * FROM usuario WHERE email = %s"
        params = (email,)
        result = self.db.execute_query(query, params)
        print(result)
        return result

    def obter_hash_senha(self, email):
        query = "SELECT senha FROM usuario WHERE email = %s"
        params = (email,)
        result = self.db.execute_query(query, params)
        if result and len(result) > 0:
            return result[0]['senha']  # Retorna o hash da senha
        return None

    def validar_login(self, email, senha):
        # Obtém o hash armazenado para o email fornecido
        hash_armazenado = self.obter_hash_senha(email)
        if hash_armazenado:
            return self.verificar_senha(senha, hash_armazenado.encode('utf-8'))
        return False
