require 'sequel'

# se der problema coloque ./aula_02/db/biblioteca-games.db
DB = Sequel.sqlite("./db/biblioteca-games.db")
require_relative "db/schema"

require_relative "views/desenvolvedor.cmd.rb"