require 'sinatra/base'

class Chitter < Sinatra::Base
  enable :sessions

  get '/homepage' do
    erb :index
  end

  post '/message' do
    @msg = params[:msg]
    #session[:messages] = "This is my message :  #{@msg}"
    session[:msg] = "This is my message :  #{@msg}"
    redirect '/show'
  end

  get '/show' do
    @msg  = session[:msg]
    
  end


  run! if app_file == $0
end
