#language: pt
# Cenários a serem executados descritos em BDD para melhor entendimento de todos os envolvidos no projeto.

@API
Funcionalidade: Realizar validação da requisições da API
    User Story: 
        Como gestor 
        Quero validar as funcionalidades da api
        Para ter certeza que todas as requisições estão funcionando

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
