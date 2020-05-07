

Dado("que eu acesse o resultado de busca do produto") do
    
    visit 'https://www.americanas.com.br'
    #sleep 2
  end
  
  Quando("eu seleciono o produto {string} e clico em comprar") do |string|
    @product = 'Notebook Samsung Essentials E20 Intel Celeron 4GB 500GB HD LED 15,6\'''\' W10 Cinza'
    find('#h_search-input').set @product
    find('#h_search-btn').click
    find(:xpath, "//div[@class='row product-grid no-gutters main-grid']//h2[text()=\"#{@product}\"]").click
    find(:xpath, "//span[text()='Comprar']").click
    sleep 3
  end
  Então("o sistema deverá incluir o produto no meu carrinho") do
    click_link_or_button 'Sim, continuar'
    sleep 3
    click_link_or_button 'Continuar'
    sleep 3
  end
  
  Então("devo checar se o produto foi adicionado com sucesso.") do
    title_product = find(:xpath, "//h2[@class='basket-productTitle']/a")[:title].to_s
    expect(title_product).to eql @product
  end