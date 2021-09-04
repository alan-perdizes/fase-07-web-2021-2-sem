require_relative 'desenvolvedor'
require_relative 'engine'
require_relative 'model'

class Game < Model
  attr_accessor(:nome, :descricao, :plataforma, :desejado, :jogado, :desenvolvedor, :engine)

  def initialize(nome, descricao, plataforma, desejado, jogado, desenvolvedor, engine)
    @nome = nome
    @descricao = descricao
    @plataforma = plataforma
    @desejado = desejado
    @jogado = jogado
    @desenvolvedor = desenvolvedor
    @engine = engine
  end
end
