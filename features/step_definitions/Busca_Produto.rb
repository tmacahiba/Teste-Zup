


Dado("que eu acesso a página principal") do
    visit 'https://www.americanas.com.br/'
    sleep 2
end

Quando("faço uma busca do produto {string}") do |notebook|
  fill_in 'conteudo', with: 'notebook'
  click_link_or_button 'h_search-btn'
     sleep 2
end

Então("o sistema exibe o link {string} com o resultado da busca") do |link|
    expect(page.has_no_select?('notebook')).to eq true
end