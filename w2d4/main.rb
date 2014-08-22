require 'sinatra'

get '/' do
  erb :index, :layout => :post
end

get '/films/new' do
  erb :form, :layout => :minimal
end

get '/films' do
  puts params
  erb "GET Request params: <p>#{params}</p>", :layout => :minimal
end

post '/films' do
  puts params
  erb "POST Request params: <p>#{params}</p>", :layout => :minimal
  params[:title]
end
