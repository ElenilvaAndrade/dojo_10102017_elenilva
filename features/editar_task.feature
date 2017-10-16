#language: pt
#utf-8

Funcionalidade: Editar Task
    Eu como usuario 
    Quero editar uma tarefa existente
    No site SuiteCRM

    Contexto: Acessar tela de consulta 
    Dado que esteja na tela de consultar tarefas com o usuario "will" e senha "will"

    @editar
     Cenario: Realizar Edição de uma tarefa
     Dado que tenha selecionado uma tarefa para edição
     Quando realizar a edicao dos dados para "Get demo feedback"
     Entao vejo os dados atualizados