class Temperature < ActiveRecord::Base
  before_validation :same_data_check

  private

  def same_data_check
    Temperature.where(created_at: 1.minutes.ago..Time.now).blank?
  end
end
