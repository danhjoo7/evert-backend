class Item < ApplicationRecord
    has_many :user_items
    has_many :users, through: :user_items
    has_many :item_categories
    has_many :items, through: :item_categories
end
