class AddOutdoorTempToTemperatures < ActiveRecord::Migration
  def change
    add_column :temperatures, :outdoor_temp, :float
  end
end
