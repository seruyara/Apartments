require "test_helper"

class LeasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lease = leases(:one)
  end

  test "should get index" do
    get leases_url, as: :json
    assert_response :success
  end

  test "should create lease" do
    assert_difference("Lease.count") do
      post leases_url, params: { lease: { rent: @lease.rent } }, as: :json
    end

    assert_response :created
  end

  test "should show lease" do
    get lease_url(@lease), as: :json
    assert_response :success
  end

  test "should update lease" do
    patch lease_url(@lease), params: { lease: { rent: @lease.rent } }, as: :json
    assert_response :success
  end

  test "should destroy lease" do
    assert_difference("Lease.count", -1) do
      delete lease_url(@lease), as: :json
    end

    assert_response :no_content
  end
end
