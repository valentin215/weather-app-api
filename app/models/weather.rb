class Weather < ApplicationRecord
  include HTTParty
  base_uri 'api.openweathermap.org'
end
