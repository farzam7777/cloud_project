class AddStatusToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :status, :string, default: 'Yes'
  end
end
