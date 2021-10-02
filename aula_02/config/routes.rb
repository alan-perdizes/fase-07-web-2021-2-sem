
require_relative '../model/plataforma'

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