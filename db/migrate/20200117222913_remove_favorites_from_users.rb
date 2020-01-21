class RemoveFavoritesFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :favorites, :string
  end
end
