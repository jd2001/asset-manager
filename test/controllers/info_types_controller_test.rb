require "test_helper"

class InfoTypesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get info_types_new_url
    assert_response :success
  end

  test "should get create" do
    get info_types_create_url
    assert_response :success
  end

  test "should get edit" do
    get info_types_edit_url
    assert_response :success
  end

  test "should get update" do
    get info_types_update_url
    assert_response :success
  end
end
