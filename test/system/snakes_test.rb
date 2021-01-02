require "application_system_test_case"

class SnakesTest < ApplicationSystemTestCase
  setup do
    @snake = snakes(:one)
  end

  test "visiting the index" do
    visit snakes_url
    assert_selector "h1", text: "Snakes"
  end

  test "creating a Snake" do
    visit snakes_url
    click_on "New Snake"

    fill_in "Age", with: @snake.age
    fill_in "Breed", with: @snake.breed
    fill_in "Name", with: @snake.name
    fill_in "Owner email", with: @snake.owner_email
    click_on "Create Snake"

    assert_text "Snake was successfully created"
    click_on "Back"
  end

  test "updating a Snake" do
    visit snakes_url
    click_on "Edit", match: :first

    fill_in "Age", with: @snake.age
    fill_in "Breed", with: @snake.breed
    fill_in "Name", with: @snake.name
    fill_in "Owner email", with: @snake.owner_email
    click_on "Update Snake"

    assert_text "Snake was successfully updated"
    click_on "Back"
  end

  test "destroying a Snake" do
    visit snakes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Snake was successfully destroyed"
  end
end
