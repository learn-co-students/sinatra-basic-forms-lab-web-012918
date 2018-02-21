require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/' do
    @name = params['name']
    @breed = params['breed']
    @age = params['age']
    #{"name"=>"roger", "breed"=>"poodle", "age"=>"4", "submit"=>"submit"}
    erb :display_puppy
  end

end
