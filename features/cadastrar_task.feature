#language: pt
#utf-8

Funcionalidade: Cadastrar Task
    Eu como usuario 
    Quero cadastrar um novo funcionario 
    No site SuiteCRM

    Contexto: logar
    Dado que loguei com o usuario "will" e senha "will"

    @cadastro
     Esquema do Cenário: Realizar Cadastro
     Dado que estou na tela de Cadastro
     Quando realizar o cadastro da tarefa com os dados "<Subject>"
     Entao vejo a tarefa cadastrado com sucesso

     Exemplos:
    |Subject|
    |Teste4 |
    |Teste5 |
    |Teste6 |
