Dado('que quero realizar um cadastro') do
    @crud.acessar
end

Quando('clico em cadastra-se e preencho as informações solicitadas') do
    @crud.preencher
end 
  
Quando('clico em cadastrar') do
    @crud.btn_cadastrar
end

Entao('devo retornar a pagina principal') do
    expect(page).to have_content "Login"
    sleep 3
end

Dado('que quero realizar login') do
    @crud.acessar
end

Quando('preencho e-mail e senha') do
    @crud.login
end

Quando('clico em login') do
    @crud.btn_login
end

Entao('acesso minha conta e vejo a tela de inicio') do
    expect(page).to have_content "FUNCIONÁRIOS"
end

Dado('que sou usuario cadastrado') do
    @crud.acessar  
end

Quando('clico em cadastra-se e preencho as informações') do
    @crud.existente
    @crud.btn_cadastrar
end

Entao('devo receber a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end
  