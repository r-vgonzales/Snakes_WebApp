require 'test_helper'

class FactTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should not save empty fact" do
    truth = Fact.new
    truth.save
    refute fact.valid?
  end

  test "should save a valid fact, with more information" do
    truth = Fact.new
    truth.statement = 'Snakes are carnivores'
    truth.additional_info = 'This means they are meat eaters'
    truth.author = 'Rio'
    truth.save
    assert truth.valid?
  end

  test "should save a valid fact, with no more information" do
    truth = Fact.new
    truth.statement = 'Snakes do not have eyelids'
    truth.author = 'Rio'
    truth.save
    assert truth.valid?
  end

  test "should not save a fact statement that already exists" do
    truth1 = Fact.new
    truth1.statement = 'Snakes are carnivores'
    truth1.author = 'Rio'
    truth1.save
    assert truth1.valid?

    truth2 = Fact.new
    truth2.statement = 'Snakes are carnivores'
    truth2.author = 'Rio'
    truth2.save
    refute truth2.valid?
  end

end
