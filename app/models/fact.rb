class Fact < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :statement, presence: true
  validates :statement, uniqueness: true
  validates :author, presence: true

end
