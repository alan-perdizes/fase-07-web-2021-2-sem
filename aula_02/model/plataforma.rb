require_relative 'model'

class Plataforma < Model
  attr_accessor :nome

  def initialize nome
    @nome = nome
  end
end