#language: pt
#utf-8

Funcionalidade: Deletar Task
    Eu como usuario 
    Quero deletar uma tarefa existente
    No site SuiteCRM

    Contexto: Acessar tela de consulta 
    Dado que esteja na tela de consultar tarefas com o usuario "will" e senha "will"

    @exclusao
     Cenario: Realizar Exclusao de uma tarefa
     Dado que tenha selecionado uma tarefa para exclusão
     Quando confirmar exclusão
     Entao a tarefa é excluida