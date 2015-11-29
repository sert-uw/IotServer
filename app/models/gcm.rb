class Gcm < ActiveRecord::Base
  validates :registration_id, presence: true, uniqueness: true
end
