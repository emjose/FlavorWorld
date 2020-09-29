class SavedDish < ApplicationRecord
  belongs_to :user
  belongs_to :dish
end
