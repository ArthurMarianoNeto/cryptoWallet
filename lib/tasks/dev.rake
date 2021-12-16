namespace :dev do
  desc "Configura ambiente de Desenvolvimento (dev)"
  task setup: :environment do
    if Rails.env.development?

      show_spinner("Agando banco de dados...") {%x(rails db:drop)} 
      show_spinner("Criando banco de dados...") {%x(rails db:create)}
      show_spinner("Migrando banco de dados...") {%x(rails db:migrate)}
      %x(rails dev:add_mining_types)
      %x(rails dev:add_coins)

    else  
      puts "Você não está em ambiente de desenvolvimento!"
  end
end

desc "Cadastra as Moedas"
task add_coins: :environment do
  show_spinner("Cadastrando Moedas.") do 
coins = [ 
            {
            description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Bitcoin.com_logo.png",
            mining_type: MiningType.find_by(acronym: "PoW")
            },
            {
            description: "Ethereum",
            acronym: "ETH",
            url_image: "https://download.logo.wine/logo/Ethereum/Ethereum-Logo.wine.png",
            mining_type: MiningType.all.sample
            },
            { 
            description: "Dash Coin",
            acronym: "DSH",
            url_image: "https://www.iconpacks.net/icons/2/free-dash-coin-icon-2219-thumb.png",
            mining_type: MiningType.all.sample
            },
            { 
            description: "Coffe Coin",
            acronym: "CFF",
            url_image: "https://static.vecteezy.com/system/resources/previews/001/209/429/non_2x/coffee-png.png",
            mining_type: MiningType.all.sample
            }
        ]

        coins.each do |coin|
            Coin.find_or_create_by!(coin)
        end
      end
      end


      desc "Cadastro dos tipos de mineração."
      task add_mining_types: :environment do
        show_spinner("Criando tipos de Mineração.") do
        mining_types = [
          {description: "Proof of Work", acronym: "PoW"},
          {description: "Proof of Stake", acronym: "PoS"},
          {description: "Proof of Capacity", acronym: "PoC"}
        ]
        mining_types.each do |mining_type|
          MiningType.find_or_create_by!(mining_type)
      end
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
