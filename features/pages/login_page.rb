# encoding: utf-8

module SuiteCRM
    module Pages
        class LoginPage < SitePrism::Page
            element :input_usuario, "#user_name"
            element :input_senha, "#user_password"
            element :bt_login, "#bigbutton"
        end
    end
end