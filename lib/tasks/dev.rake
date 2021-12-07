namespace :dev do
  desc "Vonfigura ambiente de Desenvolvimento (dev)"
  task setup: :environment do
    puts %x(rails db:drop db:create db:migrate db:seed)
  end

end
