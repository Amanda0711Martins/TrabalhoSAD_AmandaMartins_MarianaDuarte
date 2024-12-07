from flask import Blueprint, Flask, flash, render_template, request, redirect, url_for, session
from dal import usuarioDAL

usuario_bp = Blueprint('usuario', __name__)
usuario_dal = usuarioDAL.UsuarioDAL()

@usuario_bp.route('/', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        email = request.form['email']
        senha = request.form['senha']

        email_existe = usuario_dal.verificar_email(email)
        if email_existe is None:
            return render_template('login.html', erro='Usuario não cadastrado')
        else:
            senha_cadastrada = usuario_dal.validar_login(email, senha)
            if senha_cadastrada is not None:
                print(email_existe)
                session['nome_usuario'] = email_existe[0]['nome']
                session['id_usuario'] = email_existe[0]['id']
                return redirect(url_for('recomendacao.inicio'))
    else:
        return render_template('login.html')

@usuario_bp.route('/cadastrar', methods=['GET', 'POST'])
def cadastro():
    if request.method == 'POST':
        nome = request.form['nome']
        email = request.form['email']
        senha = request.form['senha']

        email_existe = usuario_dal.verificar_email(email)
        
        if len(email_existe) != 0:
            return render_template('cadastro.html', erro='Usuario ja cadastrado com o email informado')
        else:
            usuario_dal.cadastrar_usuario(nome, email, senha)
            return render_template('login.html')
        
    else:
        return render_template('cadastro.html')
    