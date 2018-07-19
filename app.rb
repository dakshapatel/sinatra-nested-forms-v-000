require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do

      params[:pirate][:ships].each do |ship_details|

      Ship.new(ship_details)


    end
#binding.pry
    @pirate = Pirate.new(params[:pirate])

#binding.pry
      @ships = Ship.all
#binding.pry
    erb :'pirates/show'
    end
  end
end
