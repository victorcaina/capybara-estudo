Dado("que estou na tela de login") do
    @login = LoginPage.new
    @login.acessar_url
end

Quando("realizo o login") do
    @login.clicar_login
end

Então("recebo mensagem de erro") do
    @login.erro?
end

Dado("preencho os campos com dados validos") do
    @login.preencher_dados_validos
end

Entao("Login realizado com sucesso") do
    @login.tela_logada?
end

Dado("eu digito usuario correto e senha incorreta") do
    @login.usuario_correto_senha_incorreta
end

Entao("sistema exibe mensagem de erro senha inválida") do
    @login.erro_senha_invalida
end

Dado("que acesso a URL da area logada") do
    @login.acessa_URL_logada
end

Entao("recebo mensagem de erro URL") do
    @login.erro_URL?
end

Então("sou redirecionado para a tela de login") do
    @login.redireciona_tela_login?
end