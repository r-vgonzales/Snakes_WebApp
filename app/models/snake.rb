class Snake < ApplicationRecord
  validates :name, presence: true
  validates :breed, presence: true
  validates :age, presence: true
  validates :owner_email, presence: true
end
