# encoding: utf-8

module SuiteCRM
    module Pages
        class CadastrarTaskPage < SitePrism::Page
            element :bt_salvar, "div.buttons:nth-child(14) > input:nth-child(1)"      
            element :input_subject, "#name"
            element :text_validacao_cadastro, "#pagecontent > div.moduleTitle > h2"
        end
    end
end