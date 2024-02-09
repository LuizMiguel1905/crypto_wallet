class WelcomeController < ApplicationController
  def index
    #cookies[:curso] = "Curso de Ruby on Rails - Luizão"
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
  end
end
