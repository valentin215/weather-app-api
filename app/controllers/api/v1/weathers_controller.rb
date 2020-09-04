class Api::V1::WeathersController < Api::V1::BaseController

  # GET api/v1/weathers
  # http://localhost:3000/api/v1/weathers?location=Paris
  def index
    location = params[:location]

    @weathers = HTTParty.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{ENV['WEATHER_API_KEY']}")


    render json: @weathers, status: :ok
  end
end
