class AddProofAddressToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :proof_address, :string
  end
end
