class WelcomeController < ApplicationController
  def index
    cookies[:curso] =  "Curso de Ruby on Rails - Arthur Mariano [Cookie]"
    session[:curso] =  "Curso de Ruby on Rails - Arthur Mariano [Session]"
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
  end
end
