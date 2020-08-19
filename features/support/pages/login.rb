class Login
    include Capybara::DSL
    
    def go
        visit "/"
    end

    def findLogin
        find(id: 'li-login-usuario').click
    end

    def findLoginText
        find(id: 'li-login-usuario').text
    end

    def with(login,senha)
      fill_in('textfield12', :with => login)
      fill_in('textfield15', :with => senha)
    end
    
    def button
        find('input[src="https://static.kabum.com.br/conteudo/temas/001/imagens/login/botao_logar.png"]').click
    end
  
    def logout
        find("a[href='https://www.kabum.com.br/cgi-local/site/login/login.cgi?funcao=sair']").click
    end
    
    def alert
        page.driver.browser.switch_to.alert.text
    end

end