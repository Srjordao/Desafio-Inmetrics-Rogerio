#language:pt
# Cenários a serem executados descritos em BDD para melhor entendimento de todos os envolvidos no projeto.

@FUN
Funcionalidade: Testes das funcionalidades do website
    User Story: Cadastar um funcionário
        Como gestor 
        Quero cadastrar um funcionário
        Para ter ele na minha base

    User Story: Editar funcionário
        Como gestor 
        Quero editar as informações do funcionário
        Para ter seus dados atualizados

    User Story: Excluir funcionário
        Como gestor 
        Quero excluir um funcionário
        Para manter a minha base limpa
    
    @CAD
    Cenario: Cadastrar funcionario
        Dado que estou logado e na pagina inicial 
        Quando crio um novo funcionario e preencho as informações de contratação
        Entao envio e recebo a mesagem "SUCESSO! Usuário cadastrado com sucesso"
    @EDI
    Cenario: Editar funcionario 
        Dado que tenho funcionario cadastrado 
        Quando pesquiso e edito as informações
        Entao atualizo e recebo a mesagem "SUCESSO! Informações atualizadas com sucesso"
    @EXC
    Cenario: Excluir funcionario 
        Dado que possuo funcionario cadastrado 
        Quando pesquiso e clico em deletar
        Entao recebo a mensagem "SUCESSO! Funcionário removido com sucesso"



