require_relative 'config/environment'
# require 'active_record'

class App < Sinatra::Base

  get '/' do
    erb :index
  end
  get '/new' do
    erb :new
  end
  post '/' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    erb :display_puppy
  end
end
