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

      @pirate = Pirate.new(params[:pirate])
      @ships = Ship.all
      erb :'pirates/show'
    end
  end
end
