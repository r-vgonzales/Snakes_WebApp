require 'test_helper'

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  setup do
    @fact = facts(:one)
  end

  test "should not save invalid comment" do
    a = Comment.new
    a.save
    refute a.valid?

    b = Comment.new
    b.message = 'Wow, so interesting!'
    b.save
    refute b.valid?

    c = Comment.new
    c.author = 'Rio'
    c.save
    refute c.valid?

    d = Comment.new
    d.location = 'London, UK'
    d.save
    refute d.valid?
  end

  test "should save a valid comment" do
    c = Comment.new
    c.message = 'Fascinating.'
    c.author = 'Kenneth M'
    c.location = 'Portsmouth, UK'

    c.fact = @fact

    c.save
    assert c.valid?
  end 

end
