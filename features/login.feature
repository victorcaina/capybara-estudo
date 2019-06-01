# encoding: utf-8
# language: pt

Funcionalidade: Login

Contexto:
Dado Que estou na tela de login

@login_invalido_em_branco
Cenario: Login Invalido com campos nulos
    Quando realizo o login
    Então recebo mensagem de erro

@login_sucesso
Cenario: Login com sucesso
    E preencho os campos com dados validos
    Quando realizo o login
    Então Login realizado com sucesso


@login_senha_incorreta
Cenario: Login senha incorreta
    E eu digito usuario correto e senha incorreta
    Quando realizo o login
    Então sistema exibe mensagem de erro senha inválida

@login_url_logada
Cenario: Entrar direto na URL logada
    Dado que acesso a URL da area logada
    Então recebo mensagem de erro
    E sou redirecionado para a tela de login