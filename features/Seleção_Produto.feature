 #language:pt

Funcionalidade: selecionar produto e adicionar no carrinho
        Para que eu possa selecionar um produto na lista de compra
        Sendo um usuário, preciso selecionar um registro
        Para que eu possa incluir no carrinho
        
        

    Cenário: Selecionar Produto e Adicionar no Carrinho
    Dado que eu acesse o resultado de busca do produto
    Quando eu seleciono o produto 'Notebook Samsung Essentials E20 Intel Celeron 4GB 500GB HD LED 15,6' e clico em comprar
    Então o sistema deverá incluir o produto no meu carrinho
    Então devo checar se o produto foi adicionado com sucesso.
    
    