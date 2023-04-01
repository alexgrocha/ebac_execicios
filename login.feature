            #language: pt

            Funcionalidade: Tela de Login na plataforma
            Como cliente da EBAC-SHOP
            quero fazer o login (autenticação) na plataforma
            para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do EBAC-SHOP

            Cenário: Autenticação válida na página EBAC-SHOP
            Quando eu digitiar um usuário e preencher a senha válido
            Então deve exibir uma mensagem de boas vindas

            Cenário: Usuário com credenciais inexistentes
            Quando eu digitiar um usuário inexistente e senha inexistente
            Então deve exibir uma mensagem de alerta

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario> e <senha>
            Então deve exibir a <mensagem>.

            Exemplos:
            | usuario                  | senha       | mensagem                      |
            | "joão.silva@ebac.com.br" | "Senha@123" | "Olá João!"                   |
            | "XXXXX@ebac.com.br"      | "Senha@123" | "Usuário ou senha inválidos!" |
            | "joão.silva@ebac.com.br" | "xxxxx@123" | "Usuário ou senha inválidos!" |