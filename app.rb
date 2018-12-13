require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    "Hello Battle!"
    erb(:index)
  end

  post '/names' do
    @name1 = params[:Player1_name]
    @name2 = params[:Player2_name]
    erb(:play)
  end
  run! if app_file == $0
end
