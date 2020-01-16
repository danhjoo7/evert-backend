class AddImagesToItems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :images, :string
  end
end
