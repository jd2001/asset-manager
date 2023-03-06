require "test_helper"

class BusinessAssetControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get business_asset_index_url
    assert_response :success
  end

  test "should get edit" do
    get business_asset_edit_url
    assert_response :success
  end
end
