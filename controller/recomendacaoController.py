from flask import Blueprint, Flask, flash, render_template, request, redirect, url_for, session
from dal import recomendacoesDAL, perfilViagemDAL, destinoDAL

recomendacao_bp = Blueprint('recomendacao', __name__)
recomendacoes_dal = recomendacoesDAL.RecomendacaoDAL()
perfil_viagem_dal = perfilViagemDAL.PerfilViagemDAL()
destino_dal = destinoDAL.DestinoDAL()

@recomendacao_bp.route('/', methods=['GET', 'POST'])
def inicio():
    nome_usuario = session.get('nome_usuario', 'Usuario')
    id_usuario = session.get('id_usuario','ID_Usuario')

    if request.method == 'POST':
        # Recebe os dados do perfil de viagem
        mes = request.form.get('mes')
        qtd_pessoas = request.form.get('qtd_pessoas')
        orcamento = float(request.form.get('orcamento'))
        tipo_destino = request.form.get('tipo_destino')

        # Cria o perfil de viagem para o usuário
        perfil_viagem_id = perfil_viagem_dal.criar_perfil(id_usuario, mes, qtd_pessoas, orcamento, tipo_destino)
        session['perfil_viagem_id'] = perfil_viagem_id
        
        # Gera a recomendação com base no perfil de viagem
        recomendacoes_dal.criar_recomendacao(id_usuario, perfil_viagem_id, mes, tipo_destino, qtd_pessoas, orcamento)

        return redirect(url_for('recomendacao.recomendacao'))

    else:
        return render_template('home.html', nome_usuario=nome_usuario)

@recomendacao_bp.route('/recomendacao', methods=['GET'])
def recomendacao():
    nome_usuario = session.get('nome_usuario', 'Usuario')
    id_usuario = session.get('id_usuario','ID_Usuario')
    perfil_viagem_id = session.get('perfil_viagem_id','Perfil Viagem')
    print(perfil_viagem_id)
    # Obtem as recomendações geradas para o usuário
    recomendacao = recomendacoes_dal.obter_recomendacoes_por_usuario_e_perfil(id_usuario,perfil_viagem_id)
    print(recomendacao)
    destinos = recomendacoes_dal.obter_destinos_por_recomendacao(recomendacao[0]['id'])
    print(destinos)

    return render_template('recomendacoes.html', recomendacoes=recomendacao, destinos=destinos, nome_usuario=nome_usuario)


