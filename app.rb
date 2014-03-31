require 'sinatra/base'

class App < Sinatra::Application
  PRODUCTS = []
  get '/' do
    erb :index, :locals => {:products => PRODUCTS}
  end

  get '/add' do
    erb :add
  end

  post '/' do
    PRODUCTS << params[:product]
    redirect '/'
  end
end