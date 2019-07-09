require 'sinatra'
require 'erb'

set :session_secret, 'super secret'

get '/' do
  'Hello world!'
end

get '/secret' do
  'This is a secret message. Well done for finding it! Here is a medal 🏅'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/test' do
  erb "Hi there, Visitor <%= 2 + 2 %>!"
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do
  erb(:cat_form)
end
