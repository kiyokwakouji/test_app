require 'test_helper'

class EditionControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get edition_top_url
    assert_response :success
  end

end
