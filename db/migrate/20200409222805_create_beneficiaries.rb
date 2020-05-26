class CreateBeneficiaries < ActiveRecord::Migration[5.1]
  def change
    create_table :beneficiaries do |t|
      t.string :nombre_completo
      t.string :parentesco
      t.date :fecha_nacimiento
      t.string :street
      t.string :outdoor_number
      t.string :interior_number
      t.string :town
      t.string :cp
      t.references :worker, foreign_key: true

      t.timestamps
    end
  end
end
