class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end
  get '/buses' do
    buses = Bus.all
    buses.to_json(only: [:id, :insurance, :phone, :vehicle_registration])
  end
  get '/routes' do
    routes = Route.all
    routes.to_json(only: [:id, :location, :name])
  end

   get '/passengers' do
    passengers = Passenger.all
    passengers.to_json(only: [:id, :phone, :name, :location])
  end

post '/buses' do
    update = Bus.create(
      insurance: params[:insurance],
      vehicle_registration: params[:vehicle_registration]
    )
    update.to_json
  end
  post '/routes' do
    update = Route.create(
      location: params[:location],
      name: params[:name]
    )
    update.to_json
  end

end

