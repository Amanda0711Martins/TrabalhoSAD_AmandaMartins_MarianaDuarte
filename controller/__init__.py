from .usuarioController import usuario_bp
from .recomendacaoController import recomendacao_bp

def register_blueprints(app):
    """Função para registrar todos os blueprints da aplicação."""
    app.register_blueprint(usuario_bp, url_prefix='/')
    app.register_blueprint(recomendacao_bp, url_prefix='/inicio')
