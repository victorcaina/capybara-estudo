Dado("Que estou na tela de login") do
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
    @login.preencher_dados
end

Então("Login realizado com sucesso") do
    @login.sucesso
end

Dado("eu digito usuario correto e senha incorreta") do
    @login.dados_incorretos
end

Então("sistema exibe mensagem de erro senha inválida") do
    pending # Write code here that turns the phrase above into concrete actions
end

Dado("que acesso a URL da area logada") do
    pending # Write code here that turns the phrase above into concrete actions
end

Então("sou redirecionado para a tela de login") do
    @login.piscininha
end