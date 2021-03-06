# encoding: utf-8
                   
Dado(/^que esteja na tela de consultar tarefas com o usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
    visit 'https://demo.suiteondemand.com/index.php?action=Login&module=Users'
    login_page.input_usuario.set arg1
    login_page.input_senha.set arg2
    login_page.bt_login.click
    consultar_page.menu_create.click
    consultar_page.menu_cadastrar_task.click
end
  
Dado(/^que tenha selecionado uma tarefa para edição$/) do
    consultar_page.bt_editar.click
end

Quando(/^realizar a edicao dos dados para "([^"]*)"$/) do |arg1|
    @subject = arg1
    cadastrar_page.input_subject.set @subject
    cadastrar_page.bt_salvar.click
  end

Entao(/^vejo os dados atualizados$/) do                                                                      
    expect(cadastrar_page.text_validacao_cadastro.text.capitalize).to eq(@subject.capitalize)                                      
end 
  