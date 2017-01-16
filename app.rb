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

get '/cat' do
  erb(:index)
end
