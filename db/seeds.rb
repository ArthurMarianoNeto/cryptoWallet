# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas. ")
spinner.auto_spin

coins = [ 
            {
            description: "Bitcoin",
            acronym: "BTC",
            url_image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Bitcoin.com_logo.png"
            },
            {
            description: "Ethereum",
            acronym: "ETH",
            url_image: "https://download.logo.wine/logo/Ethereum/Ethereum-Logo.wine.png"
            },
            { 
            description: "Dash Coin",
            acronym: "DSH",
            url_image: "https://www.iconpacks.net/icons/2/free-dash-coin-icon-2219-thumb.png"
            },
            { 
            description: "Coffe Coin",
            acronym: "CFF",
            url_image: "https://static.vecteezy.com/system/resources/previews/001/209/429/non_2x/coffee-png.png"
            }
        ]

        coins.each do |coin|
            Coin.find_or_create_by!(coin)
        end

=begin
Coin.create!(
    
)
=end
spinner.success("(Concluído)")