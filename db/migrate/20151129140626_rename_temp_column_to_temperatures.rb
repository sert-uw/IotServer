class RenameTempColumnToTemperatures < ActiveRecord::Migration
  def change
    rename_column :temperatures, :temp, :room_temp
  end
end
