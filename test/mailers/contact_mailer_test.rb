require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
    mail = ContactMailer.contact_email("matthew@email.com",
    "Matthew", "12345678901", @message = "Hello")
    #assert_equal ['rio@email.com'], mail.to
    #assert_equal ['s@snakenet.com'], mail.from
    assert_equal ['s@snakenet.com'], mail.to
    assert_equal ['rio@email.com'], mail.from
  end

end
