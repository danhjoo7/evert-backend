class RemoveBuyerIdFromUserItems < ActiveRecord::Migration[6.0]
  def change

    remove_column :user_items, :buyer_id, :string
  end
end
