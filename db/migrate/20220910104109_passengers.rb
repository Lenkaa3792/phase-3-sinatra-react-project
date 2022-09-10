class Passengers < ActiveRecord::Migration[7.0]
  def change
     create_table :passengers do |t|
      t.string :name
      t.integer :phone
      t.string :location
     end
  end
end
