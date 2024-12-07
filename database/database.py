import pymysql
from pymysql import cursors
from dotenv import load_dotenv
import os

class Database:

    def __init__(self):
        load_dotenv()
        self.host = os.getenv('DB_HOST')
        self.user = os.getenv('DB_USER')
        self.password = os.getenv('DB_PASSWORD')
        self.database = os.getenv('DB_NAME')
        self.connection = None

    def connect(self):
        try:
            self.connection = pymysql.connect(
                host=self.host,
                user=self.user,
                password=self.password,
                database=self.database,
                cursorclass=cursors.DictCursor
            )
        except pymysql.MySQLError as e:
            print(f"Erro ao conectar ao banco de dados: {e}")
            raise

    def close(self):
        if self.connection:
            self.connection.close()

    def execute_query(self, query, params=None):
        try:
            self.connect()
            with self.connection.cursor() as cursor:
                cursor.execute(query, params)
                self.connection.commit()
                return cursor.fetchall()
        except pymysql.MySQLError as e:
            print(f"Erro na execução da query: {e}")
            self.connection.rollback()
            return None
        
    def setup_database(self):
        dir_atual = os.path.dirname(os.path.abspath(__file__))
        caminho_script = os.path.join(dir_atual, 'script.sql')

        try:
            with open(caminho_script, 'r') as sql_file:
                sql = sql_file.read()

            sql_comandos = sql.split(';')

            for comando in sql_comandos:
                comando = comando.strip()
                if comando:  
                    self.execute_query(comando)
            print("Banco de dados configurado com sucesso!")
        except Exception as e:
            print(f"Erro ao configurar o banco de dados: {e}")
        finally:
            self.close()
