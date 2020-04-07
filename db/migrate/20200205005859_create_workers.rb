class CreateWorkers < ActiveRecord::Migration[5.1]
  def change
    create_table :workers do |t|
      t.string :nombre_completo
      t.string :nss
      t.string :rfc
      t.string :curp
      t.string :tel
      t.string :cel
      t.date :fecha_nacimiento
      t.date :fecha_ingreso
      t.float :sdi
      t.float :sd
      t.string :sex
      t.string :job
      t.string :status, default: "Alta"
      t.string :marital_status
      t.string :work_contract
      t.string :imss_format
      t.string :banorte_contract
      t.string :imss_discharge_notice
      t.string :infonavit_retention_notice
      t.string :employee_number
      t.string :email
      t.timestamps
    end
  end
end
