class GcmsController < ApplicationController
  protect_from_forgery except: [:create]

  def create
    gcm = Gcm.new(gcm_params)

    if gcm.save
      render status: 200, json: { 'message': 'OK' }
    else
      render status: 422, json: { 'message': 'failure' }
    end
  end

  private

  def gcm_params
    params.require(:gcm).permit(:registration_id)
  end
end
