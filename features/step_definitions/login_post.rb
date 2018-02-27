Dado("que o usuario informou o seguinte dados de acesso:") do |table|          
    @login = table.rows_hash  
end                                                                            
                                                                                 
Quando("eu faço uma solicitação do tipo POST para o serviço de login") do      
    post '/login', @login  
end                                                                            
                                                                                 
Então("o codigo de resposta HTTP dever ser igual a {int}") do |status_code|            
    expect_status status_code   
end                                                                            