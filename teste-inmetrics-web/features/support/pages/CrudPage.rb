require 'faker'
class CrudPage
    include Capybara::DSL
    
# Esse metodo acessa a home page    
def acessar
    visit "/"
end 

# O metodo abaixo preenche as informações de cadastro
def preencher 
    find(".txt2.bo1").click
    find(:xpath,"/html/body/div/div/div/form/div[2]/input").set Faker::Name.name
    find(:xpath,"/html/body/div/div/div/form/div[4]/input").set "123456"
    find(:xpath,"/html/body/div/div/div/form/div[6]/input").set "123456"
end

# O metodo abaixo preenche as informações de cadastro com um usuario ja existente.
def existente
    find(".txt2.bo1").click
    find(:xpath,"/html/body/div/div/div/form/div[2]/input").set "joaotreze"
    find(:xpath,"/html/body/div/div/div/form/div[4]/input").set "123456"
    find(:xpath,"/html/body/div/div/div/form/div[6]/input").set "123456"
end

# O metodo abaixo faz o click o botão cadastrar
def btn_cadastrar
    find(".login100-form-btn").click
end

# O metodo abaixo realiza o login 
def login
    find(:xpath,"/html/body/div/div[2]/div/form/div[3]/input").set "joaotreze"
    find(:xpath,"/html/body/div/div[2]/div/form/div[5]/input").set "123456"
end 

# O metodo abaixo realiza o click do login
def btn_login
    click_button "Entre"
    sleep 2
end
end 