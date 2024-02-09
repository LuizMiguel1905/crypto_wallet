
spinner = TTY::Spinner.new("[:spinner] Cadastrando Moedas...")
spinner.auto_spin
coins = [
  {
    description: "Bitcoin",
    acronym: "BTC",
    url_image: "https://cryptologos.cc/logos/bitcoin-btc-logo.png"
  },

  {
    description: "Ethereum",
    acronym: "ETH",
    url_image: "https://cryptologos.cc/logos/ethereum-eth-logo.png"
  },

  {
    description: "Dogecoin",
    acronym: "DOGE",
    url_image: "https://cryptologos.cc/logos/dogecoin-doge-logo.png"
  },
]

coins.each do |coin|
  sleep(1)
  Coin.find_or_create_by!(coin)
end

spinner.success("(Concluido!)")
