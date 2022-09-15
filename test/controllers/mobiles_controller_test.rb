require "test_helper"

class MobilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mobiles_index_url
    assert_response :success
  end

  test "should get new" do
    get mobiles_new_url
    assert_response :success
  end

  test "should get create" do
    get mobiles_create_url
    assert_response :success
  end

  test "should get show" do
    get mobiles_show_url
    assert_response :success
  end
end
