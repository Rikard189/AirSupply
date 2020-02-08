class AddAvatarToWorkers < ActiveRecord::Migration[5.1]
  def change
    add_column :workers, :avatar, :string
  end
end
