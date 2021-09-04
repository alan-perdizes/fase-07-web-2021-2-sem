require_relative 'model'

class Desenvolvedor < Model
  attr_accessor :nome, :ano_fundacao

  def initialize nome, ano_fundacao
    @nome = nome
    @ano_fundacao = ano_fundacao
  end
end
