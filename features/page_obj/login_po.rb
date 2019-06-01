class LoginPage
    include Capybara::DSL

    def acessar_url
        visit "http://the-internet.herokuapp.com/login"
    end

    def clicar_login
        click_button('Login')
    end

    def erro?
        page.has_content?('Your username is invalid!')
    end

    def preencher_dados
        fill_in "username", :with=> "tomsmith"
        fill_in "password", :with=> 'SuperSecretPassword!'
    end

    def sucesso
        page.has_content?('You logged into a secure area!')
    end

    def dados_incorretos

    end
end