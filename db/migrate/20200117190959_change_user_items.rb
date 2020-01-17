class ChangeUserItems < ActiveRecord::Migration[6.0]
  def change
    rename_column :user_items, :buyer, :buyer_id
    rename_column :user_items, :seller, :seller_id
  end
end
