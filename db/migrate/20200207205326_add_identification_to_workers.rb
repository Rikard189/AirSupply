class AddIdentificationToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :identification, :json
  end
end
