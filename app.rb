require 'sinatra/base'
require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :index
  end

  post '/names' do
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :names
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
