require 'sinatra/base'
require_relative './lib/player'

class Battle < Sinatra::Base
  run! if app_file == $0

enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    @player_2_name = $player_2.name
    @last_action = session[:last_action]
    erb :play
  end

  post '/play' do
    session[:last_action] = params[:last_action]
    if session[:last_action] == "Attack"
      $player_1.attack($player_2)
    end
    redirect '/play'
  end
end
