require 'test_helper'

class TypeUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_user = type_users(:one)
  end

  test "should get index" do
    get type_users_url
    assert_response :success
  end

  test "should get new" do
    get new_type_user_url
    assert_response :success
  end

  test "should create type_user" do
    assert_difference('TypeUser.count') do
      post type_users_url, params: { type_user: { description: @type_user.description, user_id: @type_user.user_id } }
    end

    assert_redirected_to type_user_url(TypeUser.last)
  end

  test "should show type_user" do
    get type_user_url(@type_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_user_url(@type_user)
    assert_response :success
  end

  test "should update type_user" do
    patch type_user_url(@type_user), params: { type_user: { description: @type_user.description, user_id: @type_user.user_id } }
    assert_redirected_to type_user_url(@type_user)
  end

  test "should destroy type_user" do
    assert_difference('TypeUser.count', -1) do
      delete type_user_url(@type_user)
    end

    assert_redirected_to type_users_url
  end
end
