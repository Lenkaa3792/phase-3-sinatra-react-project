class Passengers < ActiveRecord::Migration[6.1]
  def change
    create_table :passengers do |t|
      t.string :name
      t.integer :phone
      t.string :location
    end
  end
end
