class ItemSerializer < ActiveModel::Serializer
    attributes :category, :user, :name, :brand, :description, :price, :size 
    has_many :user_items
    has_many :users, through: :user_items
    has_many :item_categories
    has_many :categories, through: :item_categories
end