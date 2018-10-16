require 'test_helper'

class ResidentialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @residential = residentials(:one)
  end

  test "should get index" do
    get residentials_url
    assert_response :success
  end

  test "should get new" do
    get new_residential_url
    assert_response :success
  end

  test "should create residential" do
    assert_difference('Residential.count') do
      post residentials_url, params: { residential: { address: @residential.address, bank_account: @residential.bank_account, name: @residential.name, name_bank: @residential.name_bank } }
    end

    assert_redirected_to residential_url(Residential.last)
  end

  test "should show residential" do
    get residential_url(@residential)
    assert_response :success
  end

  test "should get edit" do
    get edit_residential_url(@residential)
    assert_response :success
  end

  test "should update residential" do
    patch residential_url(@residential), params: { residential: { address: @residential.address, bank_account: @residential.bank_account, name: @residential.name, name_bank: @residential.name_bank } }
    assert_redirected_to residential_url(@residential)
  end

  test "should destroy residential" do
    assert_difference('Residential.count', -1) do
      delete residential_url(@residential)
    end

    assert_redirected_to residentials_url
  end
end
