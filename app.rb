require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  "dumplings!"
end

get '/potato' do
  "potato"
end

get '/penguin' do
  erb :penguin
end

get '/named-cat' do
  @name = params[:name] + params[:surname]
  erb :index
end

get '/random-cat' do
  @name = %w(Amigo Oscar Viking).sample
  erb :index
end
