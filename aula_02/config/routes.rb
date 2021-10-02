
require_relative '../model/plataforma'
require_relative '../model/engine'

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