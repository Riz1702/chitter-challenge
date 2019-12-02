require 'sinatra/base'

class Chitter < Sinatra::Base
  get '/homepage' do
    "Chitter-let have some chitchat"
  end

  run! if app_file == $0
end
