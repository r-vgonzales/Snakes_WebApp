class Comment < ApplicationRecord
  belongs_to :fact
  validates :message, :author, :location, presence: true
end
