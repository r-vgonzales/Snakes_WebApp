require 'test_helper'

class FactsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @fact = facts(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get facts_url
    assert_response :success
  end

  test "should get new" do
    get new_fact_url
    assert_response :success
  end

  test "should create fact" do
    assert_difference('Fact.count') do
      #post facts_url, params: { fact: { additional_info: @fact.additional_info, author: @fact.author, statement: @fact.statement } }
      #post :create, fact {additional_info: @fact.additional_info, author: @fact.author = "Rio" , statement: @fact.statement = "Snakey snake"} }
      post facts_url, params: { fact: { additional_info: @fact.additional_info, author: @fact.author, statement: @fact.statement + "hello"} }
    end

    #assert_redirected_to fact_url(Fact.last)
    assert_redirected_to fact_path(assigns(:fact))
  end

  test "should show fact" do
    get fact_url(@fact)
    assert_response :success
  end

  test "should get edit" do
    get edit_fact_url(@fact)
    assert_response :success
  end

  test "should update fact" do
    patch fact_url(@fact), params: { fact: { additional_info: @fact.additional_info, author: @fact.author, statement: @fact.statement } }
    assert_redirected_to fact_url(@fact)
  end

  test "should destroy fact" do
    assert_difference('Fact.count', -1) do
      delete fact_url(@fact)
    end

    assert_redirected_to facts_url
  end
end
