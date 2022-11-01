require "test_helper"

class Public::ItemControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get public_item_show_url
    assert_response :success
  end
end
