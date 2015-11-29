class TemperaturesController < ApplicationController
  protect_from_forgery except: [:latest, :create]

  def index
    loaded_temp = Temperature.all.order('created_at DESC').limit(200)
    @temperatures = TemperatureDecorator.decorate_collection(loaded_temp)
  end

  def latest
    temp = Temperature.last
    render json: TemperatureDecorator.decorate(temp).to_json
  end

  def create
    temp = Temperature.new(temp_params)

    if temp.save
      render status: 200, json: { 'message': 'OK' }
    else
      render status: 422, json: { 'message': 'failure' }
    end
  end

  private

  def temp_params
    params.require(:temperature).permit(:room_temp, :outdoor_temp, :different)
  end
end
