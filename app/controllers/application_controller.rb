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
   post '/passengers' do
    update = Passenger.create(
      phone: params[:phone],
      name: params[:name],
      location: params[:location]

    )
    update.to_json
  end
   delete '/buses/:id' do
    remove = Bus.find(params[:id])
    remove.destroy
    remove.to_json
  end
  delete '/passengers/:id' do
    remove = Passenger.find(params[:id])
    remove.destroy
    remove.to_json
  end
   delete '/routes/:id' do
    remove = Route.find(params[:id])
    remove.destroy
    remove.to_json
  end
  patch '/buses/:id' do
    dataupdate = Bus.find(params[:id])
    dataupdate.update(
      insurance: params[:insurance]
    )
    dataupdate.to_json
  end
  patch '/routes/:id' do
    dataupdate = Route.find(params[:id])
    dataupdate.update(
      name: params[:name]
    )
    dataupdate.to_json
  end
  


end

