require 'sinatra/base'
require './lib/player'
class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    # "Hello Battle!"
    erb(:index)
  end

  post '/names' do
    # @name1 = params[:Player1_name]
    # @name2 = params[:Player2_name]
    $player1 = Player.new(params[:Player1_name])
    $player2 = Player.new(params[:Player2_name])
    redirect'/play'
  end

  get '/play' do
    p @name1 = $player1
    p @name2 = $player2
    erb(:play)
  end

  post '/move1' do
    @name1 = $player1
    @name2 = $player2
    erb(:move1)
  end

  run! if app_file == $0
end
