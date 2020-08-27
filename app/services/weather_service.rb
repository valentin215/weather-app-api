# frozen_string_literal: true

# Simple service to call the API openweathermap
class WeatherService
  include HTTParty
  base_uri 'api.openweathermap.org'

  def initialize(service, page)
    @options = { query: { site: service, page: page } }
  end

  def call(service, page)
    new(service, page).get
  end

  def get
    self.class.get("")
  end
end
