require "test_helper"

class MediaItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get media_items_index_url
    assert_response :success
  end
end
