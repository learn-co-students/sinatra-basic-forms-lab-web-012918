require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do

    erb :index
  end

  get '/new' do

    erb :create_puppy
  end

  post '/' do
    @p = params


    erb :display_puppy
  end

end

# .each {|key, value| self.send(("@#{key}="), value)}
