#language: pt

Funcionalidade: Login
Sendo uma aplicação web
Posso solicitar uma requisição do tipo POST
Para poder logar no painel de graficos

Cenário: Acesso Painel
    Dado que o usuario informou o seguinte dados de acesso:
    | email | mamisumi@gmail.com |
    | senha | 1234               |
    Quando eu faço uma solicitação do tipo POST para o serviço de login
    Então o codigo de resposta HTTP dever ser igual a 200

Cenário: Email inválido
    Dado que o usuario informou o seguinte dados de acesso:
    | email |      |
    | senha | 1234 |
    Quando eu faço uma solicitação do tipo POST para o serviço de login
    Então o codigo de resposta HTTP dever ser igual a 401

Cenário: Senha obrigatória
    Dado que o usuario informou o seguinte dados de acesso:
    | email | mamisumi@gmail.com |
    | senha |                    |
    Quando eu faço uma solicitação do tipo POST para o serviço de login
    Então o codigo de resposta HTTP dever ser igual a 401