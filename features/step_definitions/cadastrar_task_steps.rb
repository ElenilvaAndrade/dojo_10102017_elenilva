# encoding: utf-8

Dado(/^que loguei com o usuario "([^"]*)" e senha "([^"]*)"$/) do |arg1, arg2|
    visit 'https://demo.suiteondemand.com/index.php?action=Login&module=Users'
    login_page.input_usuario.set arg1
    login_page.input_senha.set arg2
    login_page.bt_login.click
  end

  Dado(/^que estou na tela de Cadastro$/) do
    consultar_page.menu_create.click
    consultar_page.menu_cadastrar_task.click
    consultar_page.bt_create_task.click
  end

  Quando(/^realizar o cadastro da tarefa com os dados "([^"]*)"$/) do |arg1|
    @subject = arg1
    cadastrar_page.input_subject.set @subject
    cadastrar_page.bt_salvar.click
  end
  
  Entao(/^vejo a tarefa cadastrado com sucesso$/) do
    expect(cadastrar_page.text_validacao_cadastro.text.capitalize).to eq(@subject.capitalize) 
  end  