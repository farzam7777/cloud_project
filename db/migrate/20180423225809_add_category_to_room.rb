class AddCategoryToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :category, :string
  end
end
