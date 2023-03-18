            #language: pt

            Funcionalidade: Tela de cadastro checkout
            Como cliente da EBAC-SHOP
            quero concluir meu cadastro
            para finalizar minha compra

            Contexto:
            Dado que eu acesse a página EBAC-SHOP, quero concluir meu cadastro para realizar compra no site

            Cenário: Concluir cadastro no site EBAC-SHOP, para concluir compra
            Quando preencha os campos marcados como obrigatórios
            E clicar em finalizar compra
            Então deve exibir uma mensagem de "Cadastro realizado com sucesso!"

            Esquema do Cenário: Concluir cadastro checkout
            Quando preencher os <campos> obrigatórios
            E clicar em finalizar compra
            Então deve exibir a <mensagem>

            Exemplos:
            | campos                                | e-mail                   | mensagem                                      |
            | "campos obrigátorios preenchidos"     | "joão.silva@ebac.com.br" | "Cadastro concluido com sucesso"              |
            | "campos obrigátorios preenchidos"     | "joao.silva@ebac"        | "Atenção e-mail inválido"                     |
            | "campos obrigátorios não preenchidos" | "joão.silva@ebac.com.br" | "Atenção campos obrigatórios não preenchidos" |