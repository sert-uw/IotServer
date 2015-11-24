class TemperaturesController < ApplicationController
  protect_from_forgery except: [:create]

  def new
  end

  def create
    render status: 200, json: { 'message': 'OK' }
  end
end
