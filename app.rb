require "sinatra"
set :session_secret, 'super secret'

get '/' do
  "Hello World"
end

get '/secret' do
  "This is secret"
end

get '/another' do
  "this is another page"
end

get '/random-cat' do
  @name = ["Amigo","Oscar","Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)

end

get '/cat-form' do
  p params
  @name = params[:name]
erb(:form)

end
