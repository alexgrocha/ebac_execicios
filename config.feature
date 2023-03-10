            #language: pt

            Funcionalidade: Tela de configurar produto
            Como cliente da EBAC-SHOP
            quero configurar meu produto de acordo com meu tamanho e gosto
            e escolher a quantidade
            para depois inserir no carrinho

            Contexto:
            Dado que eu acesse a página para configurar meu poduto

            Cenário: Configurar produto válido
            Quando eu selecionar cor, tamanho e quantidade
            Então deve ser inserido no carrinho.

            Cenário: Configurar produto inválido
            Quando eu selecionar cor, tamanho
            E não selecionar quantidade
            Então não deve ser inserido no carrinho

            Cenário: Configurar produto inválido
            Quando eu selecionar cor, quantidade
            E não selecionar tamanho
            Então não deve ser inserido no carrinho

            Cenário: Configurar produto inválido
            Quando eu selecionar tamanho, quantidade
            E não selecionar cor
            Então não deve ser inserido no carrinho

            Cenário: Configurar produto inválido
            Quando eu selecionar tamanho, cor
            E a quantidade for maior que 10
            Então não deve ser inserido no carrinho

            Cenário: Limpar configuração de produto
            Quando eu clicar no botão limpar
            Então deve voltar ao estado original

            Esquema do Cenário: Tela de configurar produto
            Quando eu selecionar o <tamanho>, <cor>, <quantidade>
            Então deve ser inserido no  <carrinho> com sucesso

            Exemplos:
            | tamanho | cor       | quantidade | carrinho                                       |
            | "M"     | "Azul"    | "1"        | "Compra no carrinho!"                          |
            | "G"     | "Preto"   | " "        | "Campo quantidade, obrigatório não informando" |
            | " "     | "Branco"  | "5"        | "Campo tamanho, obrigatório não informando"    |
            | "P"     | " "       | "2"        | "Campo cor, obrigatório não informando"        |
            | "P"     | "Amarelo" | "11"       | "Quantidade maior do que permitido"            |