# encoding: utf-8

module SuiteCRM
    module Pages
        class ConsultarTaskPage < SitePrism::Page
            element :menu_create , "#grouptab_3"
            element :menu_cadastrar_task, :xpath, "//*[@id='moduleTab_6_Tasks']"
            element :bt_create_task, "li.actionmenulinks:nth-child(2) > a:nth-child(1) > div:nth-child(2)"
            element :bt_task, ".//*[@id='actionMenuSidebar']/ul/li[1]/a/div[2]"
            element :bt_editar, :xpath, "//tr[@class='oddListRowS1'][1]//a[@title='Edit']"
            element :bt_excluir, :xpath, "//tr[contains(@class,'oddListRowS1')][1]//img[@title='Close']"
            element :bt_ok_exclusao, :xpath, "//*[@id='closeActivityDialog']/div[3]/span/button[1]"
        end
    end
end