
require_relative '../model/plataforma'
require_relative '../model/engine'
require_relative '../model/desenvolvedor'

get "/" do
  erb :index
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
  @desenvolvedores = Desenvolvedor.all
  erb :'jogos/index'
end

get '/desenvolvedores' do
  @desenvolvedores = Desenvolvedor.all

  erb :'desenvolvedor/index'
end

post '/desenvolvedores' do
  Desenvolvedor.create(nome: params[:nome], ano_funcacao: params[:ano_funcacao])

  redirect '/desenvolvedores'
end