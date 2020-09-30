class User < ApplicationRecord
    has_many :comments
    has_many :dishes, through: :comments

    validates :username, uniqueness: true
end

    # has_many :comments
    # has_many :dishes, through: :comments
    # has_many :saved_dishes
    # has_many :dishes, through: :saved_dishes

    # validates :username, uniqueness: true
