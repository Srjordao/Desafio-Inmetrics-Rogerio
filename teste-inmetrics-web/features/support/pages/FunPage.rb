class FunPage
    include Capybara::DSL

#O metodo abaixo realiza o cadastro do funcionario
def cadastrar_fun
    click_link "Novo Funcionário"
    find("#inputNome").set "Rogerioteste"
    find("#cpf").set "391.991.680-81"
    find("#slctSexo").click
    find(:xpath,"//*[@id='slctSexo']/option[2]").click
    find("#inputAdmissao").set "01/01/2021"
    find("#inputCargo").set "QA"
    find("#dinheiro").set "1000"
    find("#clt").click
    find(".cadastrar-form-btn").click
end

#O metodo abaixo realiza a edição de informações 
def editar_fun
    find(:xpath,"//*[@id='tabela_filter']/label/input").set "391.991.680-81"
    find(".btn.btn-warning").click
    find("#inputCargo").set "QA JUNIOR"
    find(".cadastrar-form-btn").click
end

#O metodo abaixo realiza a exclusão do funcionario
def excluir_fun
    find(:xpath,"//*[@id='tabela_filter']/label/input").set "391.991.680-81"
    find(".btn.btn-danger").click
end
end