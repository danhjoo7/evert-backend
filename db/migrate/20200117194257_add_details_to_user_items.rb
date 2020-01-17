class AddDetailsToUserItems < ActiveRecord::Migration[6.0]
  def change
    add_column :user_items, :buyer_id, :integer
    add_column :user_items, :seller_id, :integer
  end
end
