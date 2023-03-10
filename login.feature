            #language: pt

            Funcionalidade: Tela de Login na plataforma
            Como cliente da EBAC-SHOP
            quero fazer o login (autenticação) na plataforma
            para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação do EBAC-SHOP

            Cenário: Autenticação válida
            Quando eu digitiar o usuário "joão@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de boas vindas "Olá João"

            Cenário: Usuário inexistente
            Quando eu digitiar o usuário "XXXXX@ebac.com.br"
            E a senha "senha@123"
            Então deve exibir uma mensagem de alereta: "Usuário ou senha inválidos"

            Cenário: Usuário com senha inválida
            Quando eu digitiar o usuário "joão@ebac.com.br"
            E a senha "xxxxx123"
            Então deve exibir uma mensagem de alereta: "Usuário ou senha inválidos"

            Cenário: Usuário inexistente e senha inválida
            Quando eu digitiar o usuário "joão@xxxxx.com.br"
            E a senha "xxxxx@123"
            Então deve exibir uma mensagem de alereta: "Usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar o <usuario> e <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario            | senha       | mensagem    |
            | "joão@ebac.com.br" | "senha@123" | "Olá João!" |

            Esquema do Cenário: Validar autentição inválida
            Quando eu digitar o <usuario> e <senha>
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | usuario             | senha       | mensagem                      |
            | "XXXXX@ebac.com.br" | "senha@123" | "Usuário ou senha inválidos!" |
            | "joão@ebac.com.br"  | "xxxxx@123" | "Usuário ou senha inválidos!" |
            | "joão@xxxxx.com.br" | "xxxxx@123" | "Usuário ou senha inválidos!" |