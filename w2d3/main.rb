require 'sinatra'

get '/' do
  erb :index, :layout => :post
end