require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/new' do
    @name = params[:name]
    @breed = params[:breed]
    # binding.pry
    @age = params[:age]
    erb :display_puppy
  end

end
