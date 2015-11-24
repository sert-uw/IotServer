class TemperaturesController < ApplicationController
  protect_from_forgery except: [:create]

  def index
    loaded_temp = Temperature.all.order('created_at DESC').limit(100)
    @temperatures = TemperatureDecorator.decorate_collection(loaded_temp)
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
    params.require(:temperature).permit(:temp)
  end
end
