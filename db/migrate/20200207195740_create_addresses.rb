class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :outdoor_number
      t.string :interior_number
      t.string :town
      t.integer :cp
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
