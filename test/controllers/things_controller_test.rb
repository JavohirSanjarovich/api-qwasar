require "test_helper"

class ThingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thing = things(:one)
  end

  test "should get index" do
    get things_url, as: :json
    assert_response :success
  end

  test "should create thing" do
    assert_difference("Thing.count") do
      post things_url, params: { thing: { body: @thing.body, name: @thing.name } }, as: :json
    end

    assert_response :created
  end

  test "should show thing" do
    get thing_url(@thing), as: :json
    assert_response :success
  end

  test "should update thing" do
    patch thing_url(@thing), params: { thing: { body: @thing.body, name: @thing.name } }, as: :json
    assert_response :success
  end

  test "should destroy thing" do
    assert_difference("Thing.count", -1) do
      delete thing_url(@thing), as: :json
    end

    assert_response :no_content
  end
end
