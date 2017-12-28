require 'test_helper'

class Admin::ProvidersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @admin_provider = admin_providers(:one)
  end

  test "should get index" do
    get admin_providers_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_provider_url
    assert_response :success
  end

  test "should create admin_provider" do
    assert_difference('Admin::Provider.count') do
      post admin_providers_url, params: { admin_provider: { name: @admin_provider.name } }
    end

    assert_redirected_to admin_provider_url(Admin::Provider.last)
  end

  test "should show admin_provider" do
    get admin_provider_url(@admin_provider)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_provider_url(@admin_provider)
    assert_response :success
  end

  test "should update admin_provider" do
    patch admin_provider_url(@admin_provider), params: { admin_provider: { name: @admin_provider.name } }
    assert_redirected_to admin_provider_url(@admin_provider)
  end

  test "should destroy admin_provider" do
    assert_difference('Admin::Provider.count', -1) do
      delete admin_provider_url(@admin_provider)
    end

    assert_redirected_to admin_providers_url
  end
end
