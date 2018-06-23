require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      puts "Welcome to the Nested Forms Lab!"
      puts "let's navigate to the '/new'"
      erb :new
    end

    post '/show' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |details|
        Ship.new(details)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
