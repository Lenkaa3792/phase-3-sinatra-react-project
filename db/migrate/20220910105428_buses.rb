class Buses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|
      t.string :insurance
      t.integer :phone
      t.string :vehicle_registration
    end
  end
end
