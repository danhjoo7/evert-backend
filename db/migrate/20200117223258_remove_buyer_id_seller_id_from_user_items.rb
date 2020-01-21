class RemoveBuyerIdSellerIdFromUserItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_items, :seller_id, :integer
    remove_column :user_items, :buyer_id, :integer
  end
end
