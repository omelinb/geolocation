require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
    @coords = [17.235423, 16.232454]
  end

  test "should get people" do
    path_params = {format: :json, coords: @coords}
    get users_index_url(**path_params)
    assert_response :success
  end

  test "should get show" do
    get users_show_url(@user)
    assert_response :success
  end
end
