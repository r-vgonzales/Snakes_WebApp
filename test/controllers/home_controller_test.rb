require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_url
    assert_response :success
        assert_select 'title', 'All About Snakes!'
        assert_select 'h1', 'All About Snakes!'
        assert_select 'p', 'Learn more about snakes and join our snake community.'
  end

end
