class CreateBuses < ActiveRecord::Migration[6.1]
  def change
    create_table :buses do |t|
      t.references :company, null: false, foreign_key: true
      t.string :route_number
      t.string :license_plate
      t.string :brand
      t.string :model
      t.string :token
      t.integer :people_capacity

      t.timestamps
    end
  end
end
