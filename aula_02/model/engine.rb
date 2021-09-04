require_relative 'model'

class Engine < Model
  attr_accessor :nome, :link_site

  def initialize nome, link_site
    @nome = nome
    @link_site = link_site
  end
end
