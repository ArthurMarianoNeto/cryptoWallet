namespace :dev do
  desc "Configura ambiente de Desenvolvimento (dev)"
  task setup: :environment do
    if Rails.env.development?

      show_spinner("Agando banco de dados...") {%x(rails db:drop)} 
      show_spinner("Criando banco de dados...") {%x(rails db:create)}
      show_spinner("Migrando banco de dados...") {%x(rails db:migrate)}
      show_spinner("Semeando banco de dados...") {%x(rails db:seed)}

    else  
      puts "Você não está em ambiente de desenvolvimento!"
  end
end

private 
  def show_spinner(msg_start, msg_end = "Concuído")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
