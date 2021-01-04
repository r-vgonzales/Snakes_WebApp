require 'test_helper'

class SnakeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save empty pet snake" do
    s = Snake.new
    s.save
    refute s.valid?
  end

  test "should save valid snake" do
    s = Snake.new
    s.name = 'Stitch'
    s.breed = 'Kingsnake'
    s.age = 54
    s.owner_email = 'rio@email.com'
  end

end
