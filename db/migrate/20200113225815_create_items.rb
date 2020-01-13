class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.integer :category_id
      t.integer :user_id
      t.string :name
      t.string :brand
      t.string :description
      t.integer :price
      t.string :size

      t.timestamps
    end
  end
end
