from enums import TipoDestino, NivelViagem, MesViagem

class PerfilViagem:
    def __init__(self, id, usuario_id, mes_viagem, numero_pessoas, orcamento_por_pessoa, tipo_destino, nivel_viagem):
        self.id = id
        self.usuario_id = usuario_id
        self.mes_viagem = mes_viagem  # Enum: MesViagem
        self.numero_pessoas = numero_pessoas
        self.orcamento_por_pessoa = orcamento_por_pessoa
        self.tipo_destino = tipo_destino  # Enum: TipoDestino

