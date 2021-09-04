require 'sequel' # requerer gems, certificar que está baixado

# Criando a conexão de dados
DB = sequel.connect('sqlite://biblioteca-games.db')

DB.create_table :engines do
  primary_key :id
  String :nome, size: 50
  String :site_engine, text: true
end

DB.cretate_table :desenvolvedores do
  primary_key :id
  String :nome, size: 50
  Integer :ano_funcacao
end

DB.create_table :plataformas do
  primary_key :id
  String :nome, size: 20
end

DB.create_table :jogos do
  primary_key :id
  String :nome
  String :descricao, text: true
  FalseClass :deseja_jogar
  FalseClass :possui_jogo

  Integer :fk_plataforma
  Integer :fk_desenvolvedor
  Integer :fk_engine

  foreign_key [:fk_plataforma], :plataformas
  foreign_key [:fk_desenvolvedor], :desenvolvedores
  foreign_key [:fk_engine], :engines
end