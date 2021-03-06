require 'sinatra/base'
require 'sinatra'
require './views/player.rb'
require './views/game.rb'

class Battle < Sinatra::Base

enable :sessions

  get '/' do

    erb :index
  end

  post '/names' do
    @@game = Game.new(Player.new(params[:name1]),Player.new(params[:name2]))
    redirect "/play"
  end

  get '/play' do
    @name1 = @@game.player1.name
    @name2 = @@game.player2.name
    @hit_points = @@game.player1.hit_points
    erb :names
  end

  get '/attack' do
    # @@game = Game.instance(params[:player1], params[:player2])
    @player1 = @@game.player1
    @player2 = @@game.player2
    @name1 = @player1.name
    @name2 = @player2.name
    @attacker = @@game.attacker.name
    @victim = @@game.victim.name
    @@game.attacks
    @@game.switch_players
    @game_over = @@game.over?
    @p1_hp = @player1.hit_points
    @p2_hp = @player2.hit_points
    erb :attack
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
