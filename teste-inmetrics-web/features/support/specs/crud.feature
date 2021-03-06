#language:pt
# Cenários a serem executados descritos em BDD para melhor entendimento de todos os envolvidos no projeto.

@CRUD
Funcionalidade: Testes das funcionalidades do website
    User Story: Validar login 
        Como usuário do sistema
        Quero cadastrar um usuário, Logar e validar existência de um cadastro já cadastrado.
        Para ter acesso ao sistema e suas funcionalidades
        
    @CAD_USER
    Cenario: Cadastrar usuário 
        Dado que quero realizar um cadastro
        Quando clico em cadastra-se e preencho as informações solicitadas 
        E clico em cadastrar 
        Entao devo retornar a pagina principal

    @LOG_USER
    Cenario: Realizar Login 
        Dado que quero realizar login
        Quando preencho e-mail e senha 
        E clico em login  
        Entao acesso minha conta e vejo a tela de inicio

    @USER_EXI
    Cenario: Usuário já cadastrado
        Dado que sou usuario cadastrado
        Quando clico em cadastra-se e preencho as informações
        E clico em cadastrar 
        Entao devo receber a mensagem "Usuário já cadastrado"

