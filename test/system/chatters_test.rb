require "application_system_test_case"

class ChattersTest < ApplicationSystemTestCase
  setup do
    @chatter = chatters(:one)
  end

  test "visiting the index" do
    visit chatters_url
    assert_selector "h1", text: "Chatters"
  end

  test "should create chatter" do
    visit chatters_url
    click_on "New chatter"

    fill_in "Email", with: @chatter.email
    fill_in "First name", with: @chatter.first_name
    fill_in "Last name", with: @chatter.last_name
    fill_in "Phone", with: @chatter.phone
    click_on "Create Chatter"

    assert_text "Chatter was successfully created"
    click_on "Back"
  end

  test "should update Chatter" do
    visit chatter_url(@chatter)
    click_on "Edit this chatter", match: :first

    fill_in "Email", with: @chatter.email
    fill_in "First name", with: @chatter.first_name
    fill_in "Last name", with: @chatter.last_name
    fill_in "Phone", with: @chatter.phone
    click_on "Update Chatter"

    assert_text "Chatter was successfully updated"
    click_on "Back"
  end

  test "should destroy Chatter" do
    visit chatter_url(@chatter)
    click_on "Destroy this chatter", match: :first

    assert_text "Chatter was successfully destroyed"
  end
end
