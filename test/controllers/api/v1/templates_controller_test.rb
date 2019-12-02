require 'test_helper'

class API::V1::TemplatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @api_v1_template = api_v1_templates(:one)
  end

  test "should get index" do
    get api_v1_templates_url, as: :json
    assert_response :success
  end

  test "should create api_v1_template" do
    assert_difference('API::V1::Template.count') do
      post api_v1_templates_url, params: { api_v1_template: { markup: @api_v1_template.markup, skeleton: @api_v1_template.skeleton } }, as: :json
    end

    assert_response 201
  end

  test "should show api_v1_template" do
    get api_v1_template_url(@api_v1_template), as: :json
    assert_response :success
  end

  test "should update api_v1_template" do
    patch api_v1_template_url(@api_v1_template), params: { api_v1_template: { markup: @api_v1_template.markup, skeleton: @api_v1_template.skeleton } }, as: :json
    assert_response 200
  end

  test "should destroy api_v1_template" do
    assert_difference('API::V1::Template.count', -1) do
      delete api_v1_template_url(@api_v1_template), as: :json
    end

    assert_response 204
  end
end
