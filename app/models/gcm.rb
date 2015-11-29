class Gcm < ActiveRecord::Base
  validates :registration_id, presence: true, uniqueness: true

  def self.all_registration_id
    ids = []
    Gcm.all.each do |gcm|
      ids << gcm.registration_id
    end
    ids
  end
end
