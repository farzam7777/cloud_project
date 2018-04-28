class AddFeaturesToRoom < ActiveRecord::Migration[5.1]
  def change
    add_column :rooms, :internet, :integer
    add_column :rooms, :beach_view, :integer
    add_column :rooms, :breakfast, :integer
    add_column :rooms, :balcony, :integer
    add_column :rooms, :tv, :integer
  end
end
