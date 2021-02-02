#Declação da variavel como global.

$auth = {:username => "inmetrics", :password => "automacao"}

#POST 
# Com essa requisição realizo a inclusão de um funcionário na base. 
Dado('que realizo um cadastrado de funcionario') do
    
    @body = {"admissao": "01/01/2020", "cargo": "QA JUNIOR", "comissao": "1.000,00", "cpf": "029.096.548-93", "departamentoId": 1, "nome": "Rogerio Jordao", "salario": "1.000,00", "sexo": "m", "tipoContratacao": "clt" }.to_json
    @post_clients = HTTParty.post'https://inm-api-test.herokuapp.com/empregado/cadastrar',
    :basic_auth => $auth,
    :body => @body,
    :headers => {"Content-Type" => 'application/json'}
end

Então('a API deve retornar status {int}') do |int|
    print @post_clients.body
    print @post_clients.code
    print @post_clients.message
    expect(@post_clients.code).to eq 202
end 

#GET
# Com essa requisição consigo retornar uma lista de informações de um funcionario especifico por meio de seu ID.
Dado('que eu faça um GET no endpoint') do
    
    @get_clients = HTTParty.get'https://inm-api-test.herokuapp.com/empregado/list/7699',
    :basic_auth => $auth,
    :headers => {"Content-Type" => 'application/json'}
end 
  
Entao('deve apresentar uma lista com os funcionarios cadastrados') do
    print @get_clients.body
    print "Quantidade de usuarios cadastrados:" +@get_clients.size.to_s 
    print @get_clients.message
    print @get_clients.code
    expect(@get_clients.code).to eq 202   
end

#GET_ALL
# Com essa requisição consigo retornar da base as informações de todos os funcionários cadastrados.
Dado('que eu faça um GET no endpoint funcionarios') do
    
    @get_clients = HTTParty.get'https://inm-api-test.herokuapp.com/empregado/list_all',
    :basic_auth => $auth,
    :headers => {"Content-Type" => 'application/json'}
end
  
Entao('deve apresentar todos os funcionarios cadastrados') do

    print @get_clients.body
    print "Quantidade de usuarios cadastrados:" +@get_clients.size.to_s 
    print @get_clients.message
    print @get_clients.code
    expect(@get_clients.code).to eq 200
end

#PUT
# Com essa requisição realizo a alteração de informações de um funcionario especifico por meio de seu ID. 
Dado('que eu faça um PUT no endpoint para aletração do funcionario') do

    @body1 = {"admissao": "01/02/2020", "cargo": "GERENTE DE AUTOMAÇÃO", "comissao": "1.000,00", "cpf": "029.000.548-93", "departamentoId": 1, "nome": "Rogerio Santos Jordao", "salario": "1.000,00", "sexo": "m", "tipoContratacao": "clt" }.to_json
    @put_clients = HTTParty.put'https://inm-api-test.herokuapp.com/empregado/alterar/7699',
    :basic_auth => $auth,
    :body => @body1,
    :headers => {"Content-Type" => 'application/json'} 
end 

Entao('quero ver alteração realizada.') do
    print @put_clients.body
    print @put_clients.code 
    print @put_clients.message
    expect(@put_clients.code).to eq 202 
end