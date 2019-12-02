require 'test_helper'

class API::V1::NotificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_notification = api_v1_notifications(:one)
  end

  test "should get index" do
    get api_v1_notifications_url, as: :json
    assert_response :success
  end

  test "should create api_v1_notification" do
    assert_difference('API::V1::Notification.count') do
      post api_v1_notifications_url, params: { api_v1_notification: { body: @api_v1_notification.body, type: @api_v1_notification.type, user_uuid: @api_v1_notification.user_uuid } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_notification" do
    get api_v1_notification_url(@api_v1_notification), as: :json
    assert_response :success
  end

  test "should update api_v1_notification" do
    patch api_v1_notification_url(@api_v1_notification), params: { api_v1_notification: { body: @api_v1_notification.body, type: @api_v1_notification.type, user_uuid: @api_v1_notification.user_uuid } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_notification" do
    assert_difference('API::V1::Notification.count', -1) do
      delete api_v1_notification_url(@api_v1_notification), as: :json
    end

    assert_response 204
  end
end
