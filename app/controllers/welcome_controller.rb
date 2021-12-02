class WelcomeController < ApplicationController
  def index
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
  end
end
