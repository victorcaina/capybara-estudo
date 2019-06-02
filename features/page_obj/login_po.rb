class LoginPage
    include Capybara::DSL

    def acessar_url
        visit 'http://the-internet.herokuapp.com/login'
    end

    def clicar_login
        click_button('Login')
    end

    def erro?
        page.has_content? ('Your username is invalid!')
    end

    def preencher_dados_validos
        fill_in('username', :with => 'tomsmith')
        fill_in('password', :with => 'SuperSecretPassword!')
    end

    def tela_logada?
        page.has_content? ('You logged into a secure area!')
    end

    def usuario_correto_senha_incorreta
        fill_in('username', :with => 'tomsmith')
        fill_in('password', :with => 'lero_lero')
    end

    def erro_senha_invalida
        page.has_content? ('Your password is invalid!')
    end

    def acessa_URL_logada
        visit 'http://the-internet.herokuapp.com/secure'
    end

    def erro_URL?
        page.has_content? ('You must login to view the secure area!')
    end

    def redireciona_tela_login?
        page.has_content? ('Login Page')
    end
end