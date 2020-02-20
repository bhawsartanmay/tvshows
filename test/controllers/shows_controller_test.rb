require 'test_helper'

class ShowsControllerTest < ActionDispatch::IntegrationTest
  test "should get update" do
    get shows_update_url
    assert_response :success
  end

end
