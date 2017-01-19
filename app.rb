require 'sinatra/base'
require 'sinatra'
require './views/player.rb'

class Battle < Sinatra::Base

enable :sessions

  get '/' do

    erb :index
  end

  post '/names' do
    $player1 = Player.new(params[:name1])
    $player2 = Player.new(params[:name2])
    redirect "/play"
  end

  get '/play' do
    @name1 = $player1.name
    @name2 = $player2.name
    @hit_points = 20
    erb :names
  end

  get '/attack' do
    @name1 = $player1.name
    @name2 = $player2.name
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
