require 'sequel'

class Model

  attr_accessor :table

  def initialize table
    @DB = Sequel.connect "sqlite://biblioteca-games.db"
    @table = @DB[table]
  end

  def create query
    @table.insert(query)
  end

  def read id
    @table.where(id: id)
  end

  def all
    @table.all
  end

  def update id, query
    @table.update(id: id, query)
  end

  def delete id
    @table.delete(id: id)
  end
end