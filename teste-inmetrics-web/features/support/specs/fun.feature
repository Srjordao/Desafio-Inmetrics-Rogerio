#language:pt
# Cenários a serem executados descritos em BDD para melhor entendimento de todos os envolvidos no projeto.

@FUN
Funcionalidade: Testes das funcionalidades do website
    User Story: Criação de funcionário 
        Como gestor 
        Quero cadastrar,alterar e excluir as informações do funcionário
        Para sempre ter as informações atualizadas na minha base
    
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



