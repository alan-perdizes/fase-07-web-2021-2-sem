require_relative("model/game")
require 'sequel'

DB = sequel.connect('sqlite://biblioteca-games.db')

opcao = -1
operacao = 0

def sair
  puts "Saindo ............."
end

def exibir_menu
  puts "Escolha uma das opções"
  puts "1 - Cadastro"
  puts "2 - visualização"
  puts "3 - Remover"
  puts "4 - Alterar"
  puts "5 - Gerar a lista"
  puts "0 - para sair"
end

def capturar_opcao codigo_operacao = 0
  puts ""
  print "Digite o número da opção: "
  captura_usuario = gets.chomp.to_i
  return captura_usuario + codigo_operacao
end

def exibir_opcao_cadastro
  puts "1 - Desenvolvedor"
  puts "2 - Engine"
  puts "3 - Game"
end

def fazer_cadastro_desenvolvedor
  print "Digite o nome da desenvolvedora: "
  nome_desenvolvedora = gets.chomp
  puts ""
  print "Digite o ano da criação: "
  ano_fundacao = gets.chomp.to_i
end

def fazer_cadastro_engine
  print "Digite o nome da Engine: "
  nome_engine = gets.chomp
  puts ""
  print "Digite o site da engine: "
  site = gets.chomp
end

def fazer_cadastro_game
  print "Digite o nome do jogo: "
  nome_game = gets.chomp
  puts ""
  print "Digite a descrição do jogo: "
  descricao = gets.chomp
  print "Escolha a plataforma: "
  # Colocar depois uma lista de plataforma
  puts ""
  print "Escolha a desenvolvedora: "
  # listar as 10 desenvolvedoras cadastradas
  desenvolvedora = gets.chomp
  print "Escolha a engine que foi feita o jogo: "
  # listar as 10 engines
  engine = gets.chomp

end

while opcao != 0
  exibir_menu() if opcao == -1
  exibir_opcao_cadastro() if opcao == 1
  
  sair() if opcao == 0
  opcao = capturar_opcao()
end
