require 'sinatra/base'

class Chitter < Sinatra::Base
  enable :sessions

  get '/homepage' do
    erb :index
  end

 post '/message' do
   @msg = params[:msg]
   redirect '/play'

 end

 
  run! if app_file == $0
end
