require 'test_helper'

class AlgorithmsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get algorithms_index_url
    assert_response :success
  end

  test "should get create" do
    get algorithms_create_url
    assert_response :success
  end

  test "should get new" do
    get algorithms_new_url
    assert_response :success
  end

end
