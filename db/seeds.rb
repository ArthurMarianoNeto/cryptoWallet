# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Coin.create!(
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://upload.wikimedia.org/wikipedia/commons/c/cf/Bitcoin.com_logo.png"
    )

Coin.create!(
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://download.logo.wine/logo/Ethereum/Ethereum-Logo.wine.png"
)

Coin.create!(
    description: "Dash Coin",
    acronym: "DSH",
    url_image: "https://www.iconpacks.net/icons/2/free-dash-coin-icon-2219-thumb.png"
)

Coin.create!(
    description: "Coffe Coin",
    acronym: "CFF",
    url_image: "https://static.vecteezy.com/system/resources/previews/001/209/429/non_2x/coffee-png.png"
)

puts "Moedas cadastradas com sucesso!"