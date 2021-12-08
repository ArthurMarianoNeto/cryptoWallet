namespace :dev do
  desc "Configura ambiente de Desenvolvimento (dev)"
  task setup: :environment do
    if Rails.env.development?

      spinner = TTY::Spinner.new("[:spinner] Apagando banco de dados.")
      spinner.auto_spin
      %x(rails db:drop)
      spinner.success("(Executado com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Criando novo banco de dados.")
      spinner.auto_spin
      %x(rails db:create)
      spinner.success("(Executado com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Migrando novo banco de dados.")
      spinner.auto_spin
      %x(rails db:migrate)
      spinner.success("(Executado com sucesso!)")

      spinner = TTY::Spinner.new("[:spinner] Semeando novos dados em banco de dados.")
      spinner.auto_spin
      %x(rails db:seed)
      spinner.success("(Executado com sucesso!)")

    else  
      puts "Você não está em ambiente de desenvolvimento!"
  end
end

end