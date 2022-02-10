require "test_helper"

class ChattersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @chatter = chatters(:one)
  end

  test "should get index" do
    get chatters_url
    assert_response :success
  end

  test "should get new" do
    get new_chatter_url
    assert_response :success
  end

  test "should create chatter" do
    assert_difference("Chatter.count") do
      post chatters_url, params: { chatter: { email: @chatter.email, first_name: @chatter.first_name, last_name: @chatter.last_name, phone: @chatter.phone } }
    end

    assert_redirected_to chatter_url(Chatter.last)
  end

  test "should show chatter" do
    get chatter_url(@chatter)
    assert_response :success
  end

  test "should get edit" do
    get edit_chatter_url(@chatter)
    assert_response :success
  end

  test "should update chatter" do
    patch chatter_url(@chatter), params: { chatter: { email: @chatter.email, first_name: @chatter.first_name, last_name: @chatter.last_name, phone: @chatter.phone } }
    assert_redirected_to chatter_url(@chatter)
  end

  test "should destroy chatter" do
    assert_difference("Chatter.count", -1) do
      delete chatter_url(@chatter)
    end

    assert_redirected_to chatters_url
  end
end
