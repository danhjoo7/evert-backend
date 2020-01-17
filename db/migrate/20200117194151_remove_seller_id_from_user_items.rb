class RemoveSellerIdFromUserItems < ActiveRecord::Migration[6.0]
  def change

    remove_column :user_items, :seller_id, :string
  end
end
