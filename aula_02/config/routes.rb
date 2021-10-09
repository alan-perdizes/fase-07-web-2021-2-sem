
require_relative '../model/plataforma'
require_relative '../model/engine'
# TODO: fazer a importação da model de desenvolvedores

get "/" do
  return "Hello World"
end

get "/plataformas" do
  @plataforma = Plataforma.all

  erb :"plataforma/index" 
end

post "/plataformas" do
  Plataforma.create(nome: params[:plataforma])
  
  redirect '/plataformas'
end

get '/engines' do
  @engines = Engine.all

  erb :'engine/index'
end

post '/engines' do
  Engine.create(nome: params[:nome], site_engine: params[:site])

  redirect '/engines'
end

get '/jogos' do
  @plataformas = Plataforma.all
  @engines = Engine.all
  # TODO: Pegar todo os desenvolvedores do banco de dados
  erb :'jogos/index'
end

# TODO: criar a rota dos desenvolvedores no mesmo esquema da plataforma e das engines