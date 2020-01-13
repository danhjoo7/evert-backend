class UserItem < ApplicationRecord
    belongs_to :users
    belongs_to :items
end
