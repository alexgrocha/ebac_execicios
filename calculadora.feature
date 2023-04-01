            #language: pt

            Funcionalidade: Calculadora
            Como não sei fazer conta de cabeça
            Quero usar a calculadora do sistema
            Para somar dois números

            Contexto:
            Dado que eu acesse a calculadora.

            Cenário: Soma de 2 números
            Dado que eu acesse a calculadora
            Quando eu somar 2 + 2
            Então o resultado deve ser 4.

            Esquema do Cenário: Somar de 2 números
            Quando eu digitar o <numero1>
            E <nunumero2>
            Então deve exibir a <total> de sucesso.

            Exemplos:
            | numero1 | numero2 | total                     |
            | "2"     | "2"     | "O valor desta some é 4"  |
            | "3"     | "3"     | "O valor desta some é 6"  |