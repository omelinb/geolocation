class RemoveColumnsFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :longitude
    remove_column :users, :latitude
  end
end
