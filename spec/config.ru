require_relative "./config/enviroment.rb"

use Rack::Cors do
    allow do
      origins '*'
      resource '*', headers: :any, methods: [:get, :post, :delete,  :patch, :options, :head]
    end
  end

use Rack::JSONBodyParser
run ApplicationController