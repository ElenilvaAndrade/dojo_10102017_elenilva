# encodi  ing: utf-8

Dado(/^que tenha selecionado uma tarefa para exclusão$/) do
    consultar_page.bt_excluir.click
end
  
Quando(/^confirmar exclusão$/) do
    consultar_page.bt_ok_exclusao.click
end
  
Entao(/^a tarefa é excluida$/) do
    page.should have_no_selector(:xpath, "//*[@id='closeActivityDialog']/div[3]/span/button[1]")
end