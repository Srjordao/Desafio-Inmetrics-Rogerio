Dado('que estou logado e na pagina inicial') do
    @crud.acessar
    @crud.login
    @crud.btn_login
end

Quando('crio um novo funcionario e preencho as informações de contratação') do
    @fun.cadastrar_fun
end

Entao('envio e recebo a mesagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end 

Dado('que tenho funcionario cadastrado') do
    @crud.acessar
    @crud.login
    @crud.btn_login
end

Quando('pesquiso e edito as informações') do
    @fun.editar_fun
end 

Entao('atualizo e recebo a mesagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end

Dado('que possuo funcionario cadastrado') do
    @crud.acessar
    @crud.login
    @crud.btn_login
end

Quando('pesquiso e clico em deletar') do
    @fun.excluir_fun
end

Entao('recebo a mensagem {string}') do |mensagem|
    expect(page).to have_content mensagem
end