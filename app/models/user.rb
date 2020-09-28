class User < ApplicationRecord
    has_many :likes 
    has_many :comments
    has_many :dishes, through: :likes 
    has_many :dishes, through: :comments

    validates :username, uniqueness: true
end
