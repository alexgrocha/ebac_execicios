            #language: pt

            Funcionalidade: Tela de cadastro checkout
            Como cliente da EBAC-SHOP
            quero concluir meu cadastro
            para finalizar minha compra

            Contexto:
            Dado que eu acesse a página EBAC-SHOP, quero concluir meu cadastro para realizar compra

            Cenário: Concluir cadastro
            Quando preencha os campos marcado por asteriscos
            E informe um e-mail válido
            Então deve exibir uma mensagem de "Cadastro realizado com sucesso!"

            Cenário: Válidar e-mail
            Quando preencha os campos marcados por asteriscos
            E não informe um e-mail valido
            Então deve exibir uma mensagem de alerta "E-mail informado inválido"

            Cenário: Válidar campos vazios
            Quando não preencher campos obrigatório
            Então deve exibir uma mensagem de alerta "Campos obrigatórios não informado"

            Esquema do Cenário: Concluir cadastro checkout
            Quando preencher os <campos> obrigatórios
            E informe um <e-mail> válido
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | campos                            | e-mail              | mensagem                         |
            | "campos obrigátorios preenchidos" | "teste@ebac.com.br" | "Cadastro concluido com sucesso" |

            Esquema do Cenário: Válidar e-mail checkout
            Quando preencher os <campos> obrigatórios
            E informe um <e-mail> inválido
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | campos                                | e-mail              | mensagem                         |
            | "campos obrigátorios preenchidos"     | "teste@ebac"        | "Atenção e-mail inválido "       |

            Esquema do Cenário: Cadastro checkout campos obrigatórios
            Quando não preencher os <campos> obrigatórios
            Então deve exibir a <mensagem> de erro

            Exemplos:
            | campos                                | e-mail              | mensagem                                      |
            | "campos obrigátorios não preenchidos" | "teste@ebac.com.br" | "Atenção campos obrigatórios não preenchidos" |