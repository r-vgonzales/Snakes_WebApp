class Fact < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :statement, presence: true
  validates :statement, uniqueness: true
  validates :author, presence: true

end
