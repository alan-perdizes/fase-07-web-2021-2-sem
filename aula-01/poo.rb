class Pessoa

  attr_accessor :nome, :bebe_agua, :idade, :altura

  def initialize(nome, bebe_agua, idade, altura)
    @nome = nome
    @bebe_agua = bebe_agua
    @idade = idade
    @altura = altura
  end

  def apresentacao
    #a plavra return é opicional
    return "nome #{@nome} bebe água #{@bebe_agua} tem a altura #{@altura} e possui #{@idade} anos"
  end
end

alan = Pessoa.new("Alan Oliveira", true, 26, 1.78)
puts alan.apresentacao
