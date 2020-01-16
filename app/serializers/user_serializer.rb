class UserSerializer < ActiveModel::Serializer
    attributes :username, :name, :location, :favorites
    has_many :user_items
    has_many :items, through: :user_items 
end