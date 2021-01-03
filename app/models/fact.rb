class Fact < ApplicationRecord
  validates :statement, presence: true
  validates :statement, uniqueness: true
  validates :author, presence: true

end
