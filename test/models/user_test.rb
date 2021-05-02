require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save invalid user" do
    user = User.new
    user.save
    refute user.valid?
  end

  test "should sae valid user" do
    user = User.new
    user.email = "bob@email.com"
    user.password = "computers"
    user.save
    assert user.valid?
  end
end
