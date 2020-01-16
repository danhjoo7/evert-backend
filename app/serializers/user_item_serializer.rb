class UserItemSerializer < ActiveModel::Serializer
    attributes :user, :item, :favorite, :seller, :buyer
    has_many :user_items
    has_many :items, through: :user_items 
end