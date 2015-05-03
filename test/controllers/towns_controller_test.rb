require 'test_helper'

class TownsControllerTest < ActionController::TestCase
  test "should get teleport" do
    get :teleport
    assert_response :success
  end

end
