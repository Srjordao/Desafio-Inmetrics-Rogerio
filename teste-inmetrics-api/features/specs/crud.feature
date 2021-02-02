#language: pt
# Cenários a serem executados descritos em BDD para melhor entendimento de todos os envolvidos no projeto.

@API
Funcionalidade: Realizar validação da requisições da API
    User Story: Cadastrar um usuário
        Como gestor 
        Quero cadastrar um usuário
        Para ter os dados na minha base 
    
    User Story: Consultar usuário
        Como gestor 
        Quero consultar um usuário
        Para ter acesso aos dados da base

    User Story: Consultar todos os usuários
        Como gestor 
        Quero consultar todos os usuários da base
        Para ter acesso aos dados da base

    User Story: Alterar dados do usuário
        Como gestor 
        Quero alterar uma informação
        Para poder atulizar a base cadastral

    @CADASTRAR_USER
    Cenario: Cadastrar um usuario 
        Dado que realizo um cadastrado de funcionario 
        Então a API deve retornar status 202

    @CONSULTAR_USER
    Cenario: Consulta de usuarios
        Dado que eu faça um GET no endpoint
        Entao deve apresentar uma lista com os funcionarios cadastrados

    @ALL_USERS
    Cenario: Consulta de todos os usuarios 
        Dado que eu faça um GET no endpoint funcionarios
        Entao deve apresentar todos os funcionarios cadastrados

    @ALTERAR_USER
    Cenario: Alteração de dados         
        Dado que eu faça um PUT no endpoint para aletração do funcionario
        Entao quero ver alteração realizada.
