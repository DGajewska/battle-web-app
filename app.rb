require 'sinatra/base'

class Battle < Sinatra::Base
  get '/' do
    'FIGHT!'
  end

  run! if app_file == $0
end
