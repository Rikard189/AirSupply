class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :nombre
      t.string :nss
      t.string :rfc
      t.string :curp
      t.string :tel
      t.string :cel
      t.date :fecha_nacimiento
      t.date :fecha_ingreso
      t.float :sdi
      t.float :sd

      t.timestamps
    end
  end
end
