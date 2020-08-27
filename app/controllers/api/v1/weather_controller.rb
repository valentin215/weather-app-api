class Api::V1::WeathersController < Api::V1::BaseController
  def index
    location = params[:location]
    @weathers = HTTparty.get("https://api.openweathermap.org/data/2.5/weather?q=#{location}&appid=#{APIKEY}")
  end
end
