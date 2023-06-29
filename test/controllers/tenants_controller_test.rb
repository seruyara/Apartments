require "test_helper"

class TenantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tenant = tenants(:one)
  end

  test "should get index" do
    get tenants_url, as: :json
    assert_response :success
  end

  test "should create tenant" do
    assert_difference("Tenant.count") do
      post tenants_url, params: { tenant: { age: @tenant.age, name: @tenant.name } }, as: :json
    end

    assert_response :created
  end

  test "should show tenant" do
    get tenant_url(@tenant), as: :json
    assert_response :success
  end

  test "should update tenant" do
    patch tenant_url(@tenant), params: { tenant: { age: @tenant.age, name: @tenant.name } }, as: :json
    assert_response :success
  end

  test "should destroy tenant" do
    assert_difference("Tenant.count", -1) do
      delete tenant_url(@tenant), as: :json
    end

    assert_response :no_content
  end
end
