require 'sinatra/base'
require 'sinatra'
require './views/player.rb'

class Battle < Sinatra::Base

enable :sessions

  get '/' do

    erb :index
  end

  post '/names' do
    session[:name1] = params[:name1]
    session[:name2] = params[:name2]
    redirect "/play"
  end

  get '/play' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    @hit_points = 20
    erb :names
  end

  get '/attack' do
    @name1 = session[:name1]
    @name2 = session[:name2]
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
