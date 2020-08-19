Quando("clico na opção login") do
    @login.go
    @login.findLogin
end

Quando("faço login com {string} e {string}") do |login, senha|
    expect(page).to have_current_path('/cgi-local/site/login/login.cgi')
   
    @login.with(login,senha)
    @login.button
end

Então("sou logada com sucesso") do
    expect(@login.findLoginText).to eql "OLÁ, LARISSA!"
    @login.logout 
    expect(@login.findLoginText).to eql "LOGIN | CADASTRE-SE"
end

Então("deve exibir uma mensagem de erro") do
    expect(page).to have_content "ERRO: Seu e-mail ou senha informados são inválidos - Tente novamente.."
end

Então("deve exibir um alerta {string}") do |alerta|
    expect(@login.alert).to eql alerta
end

  