require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      <h1>Welcome to the Nested Forms Lab!</h1>
      <h1>let's navigate to the '/new'</h1>
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
