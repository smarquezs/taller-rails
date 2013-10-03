require 'test_helper'

class FormsControllerTest < ActionController::TestCase
  test "should get for_get" do
    get :for_get
    assert_response :success
  end

  test "should get for_post" do
    get :for_post
    assert_response :success
  end

end
