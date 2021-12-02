class WelcomeController < ApplicationController
  def index
<<<<<<< HEAD
    @nome = "Arthur Mariano"
    @curso = "Rails"
=======
    @meu_nome = params[:nome]
    @meu_curso = params[:curso]
>>>>>>> 50d7ada53658fd53871981a943fd62e98bb97a99
  end
end
