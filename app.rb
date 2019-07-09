require 'sinatra'

get '/' do
  'Hello world!'
end

get '/secret' do
  'This is a secret message. Well done for finding it! Here is a medal 🏅'
end
