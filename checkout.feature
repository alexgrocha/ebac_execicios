            #language: pt

            Funcionalidade: Tela de cadastro checkout
            Como cliente da EBAC-SHOP
            quero concluir meu cadastro
            para finalizar minha compra

            Contexto:
            Dado que eu acesse a página EBAC-SHOP, quero concluir meu cadastro para realizar compra no site.

            Cenário: Concluir cadastro no site EBAC-SHOP, para concluir compra
            Quando preencha os campos obrigatórios, nome, sobrenome, país, endereço, cidade, cep, estado, telefone, endereço de e-mail
            E marcar a opção criar uma conta
            E clicar em finalizar compra
            Então deve exibir uma mensagem de "Cadastro realizado com sucesso!".

            Cenário: Concluir cadastro no site EBAC-SHOP, sem preencher campos obrigátorios
            Quando não preencha campos obrigatórios, nome, sobrenome, país, endereço, cidade, cep, estado, telefone, endereço de e-mail
            E marcar a opção criar uma conta
            E clicar em finalizar compra
            Então deve exibir uma mensagem de "Campos obrigatórios não informado!".

            Esquema do Cenário: Concluir cadastro checkout
            Quando preencher os <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep>, <estado>, <telefone>, <endereco de e-mail> obrigatórios
            E marcar a opção criar uma conta
            E clicar em finalizar compra
            Então deve exibir a <mensagem>.

            Exemplos:
            | nome   | sobrenome | pais   | endereco  | cidade    | cep       | estado    | telefone     | endereco de e-mail       | mensagem                                  |
            | "João" | "Silva"   | Brasil | AV Cillos | Americana | 13465-000 | São Paulo | 99 9999-9999 | "joão.silva@ebac.com.br" | "Cadastro concluido com sucesso"          |
            | " "    | "Silva"   | Brasil | AV Cillos | Americana | 13465-000 | São Paulo | 99 9999-9999 | "joão.silva@ebac.com.br" | "Campo obrigatórios <nome> não informado" |