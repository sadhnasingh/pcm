require 'test_helper'

class ComplainControllerTest < ActionDispatch::IntegrationTest
  test "should get mycomplain" do
    get complain_mycomplain_url
    assert_response :success
  end

end
