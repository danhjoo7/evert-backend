class UserSerializer < ActiveModel::Serializer
    attributes :username, :name, :location, :favorites
  end