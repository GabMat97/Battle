require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions
  get '/' do
    # "Hello Battle!"
    erb(:index)
  end

  post '/names' do
    # @name1 = params[:Player1_name]
    # @name2 = params[:Player2_name]
    session[:Player1_name] = params[:Player1_name]
    session[:Player2_name] = params[:Player2_name]
    redirect'/play'
  end

  get '/play' do
    @name1 = session[:Player1_name]
    @name2 = session[:Player2_name]
    erb(:play)
  end
  run! if app_file == $0
end
