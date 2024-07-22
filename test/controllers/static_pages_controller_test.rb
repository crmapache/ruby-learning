require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get root_path
    assert_response :success
    assert_select "h1", "Welcome to the Sample App"
  end

  test "should get help" do
    get help_url
    assert_response :success
    assert_select "h1", "Help"
  end

  test "should get about" do
    get about_url
    assert_response :success
    assert_select "h1", "About"
  end

  test "should get contact" do
    get contact_url
    assert_response :success
    assert_select "h1", "Contact"
  end

  test "should get new" do
    get signup_path
    assert_response :success
    assert_select "h1", "Sign up"
  end
end
