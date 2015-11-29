class AddDifferentToTemperatures < ActiveRecord::Migration
  def change
    add_column :temperatures, :different, :float
  end
end
