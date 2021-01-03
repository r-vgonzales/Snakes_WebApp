require 'test_helper'

class ContactControllerTest < ActionDispatch::IntegrationTest
  test "should get contact" do
    get contact_url
    assert_response :success

    assert_template layout: 'application'

    assert_select 'title', 'All About Snakes!'
    assert_select 'h1', 'Contact Us'
    assert_select 'p', 'Complete the form if you have any queries.'
  end

end
