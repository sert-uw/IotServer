class CreateGcms < ActiveRecord::Migration
  def change
    create_table :gcms do |t|
      t.string :registration_id, unique: true

      t.timestamps null: false
    end
  end
end
