class Dish < ApplicationRecord
    has_many :comments 
    has_many :users, through: :comments

end

    # has_many :comments 
    # has_many :saved_dishes
    # has_many :users, through: :comments
    # has_many :users, through: :saved_dishes
