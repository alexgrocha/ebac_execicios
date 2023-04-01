            #language: pt

            Funcionalidade: Tela de configurar produto
            Como cliente da EBAC-SHOP
            quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página EBAC-SHOP, para configurar meu poduto

            Cenário: Configurar produto para inserir no carrinho
            Quando eu selecionar cor, tamanho e quantidade
            E clicar no botão compra
            Então deve ser inserido no carrinho

            Cenário: Configurar produto inválido
            Quando eu não selecionar os itens obrigatórios
            E clicar no botão compra
            Então não deve ser inserido no carrinho

            Esquema do Cenário: Tela de configurar produto
            Quando eu selecionar o <tamanho>, <cor> e <quantidade>
            Então deve ser inserido no  <carrinho>.

            Exemplos:
            | tamanho | cor       | quantidade | carrinho                                         |
            | "M"     | "Azul"    | "1"        | "Compra no carrinho!"                            |
            | "G"     | "Preto"   | " "        | "Campo <quantidade>, obrigatório não informando" |
            | " "     | "Branco"  | "5"        | "Campo <tamanho>, obrigatório não informando"    |
            | "P"     | " "       | "2"        | "Campo <cor>, obrigatório não informando"        |
            | "P"     | "Amarelo" | "11"       | "Quantidade maior do que permitido"              |