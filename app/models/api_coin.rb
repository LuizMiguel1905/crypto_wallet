require 'net/http'
class ApiCoin

  def initialize
    @id_encontrado = encontrar
    exibir_hash

  end

  def encontrar
    ActiveSupport::JSON.decode(
      Net::HTTP.get(
        URI("https://api.coinpaprika.com/v1/coins")
      )
    )
  end
  def exibir_hash
    puts "Hash retornado pela API:"
    puts @id_encontrado.inspect
  end
end
