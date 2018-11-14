require 'sinatra/base'
require_relative './lib/game'

class Battle < Sinatra::Base
  run! if app_file == $0

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $battle = Game.new(params[:player_1_name],params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @last_action = session[:last_action]
    erb :play
  end

  post '/play' do
    session[:last_action] = params[:last_action]
    if session[:last_action] == "Attack"
      $battle.attack($battle.player_2)
    end
    redirect '/play'
  end
end
