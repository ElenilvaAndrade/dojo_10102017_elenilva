# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../pages/*.rb')].each { |file| require file }

module UI
  module Pages

    def login_page
      SuiteCRM::Pages::LoginPage.new
    end

    def cadastrar_page
      SuiteCRM::Pages::CadastrarTaskPage.new
    end

    def consultar_page
      SuiteCRM::Pages::ConsultarTaskPage.new
    end
  end
end