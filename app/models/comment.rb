class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :dish

  validates :content, presence: true, length: { in: 6..30 }
end
