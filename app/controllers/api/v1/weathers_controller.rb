class Api::V1::WeathersController < Api::V1::BaseController
  def index
    location = 'Paris'

    @weathers = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{ENV['WEATHER_API_KEY']}")
    
    authorize @weathers 

    render json: @weathers, status: :ok
  end
end
