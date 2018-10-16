require 'test_helper'

class NeighborsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @neighbor = neighbors(:one)
  end

  test "should get index" do
    get neighbors_url
    assert_response :success
  end

  test "should get new" do
    get new_neighbor_url
    assert_response :success
  end

  test "should create neighbor" do
    assert_difference('Neighbor.count') do
      post neighbors_url, params: { neighbor: { location: @neighbor.location, name: @neighbor.name, residential_id: @neighbor.residential_id } }
    end

    assert_redirected_to neighbor_url(Neighbor.last)
  end

  test "should show neighbor" do
    get neighbor_url(@neighbor)
    assert_response :success
  end

  test "should get edit" do
    get edit_neighbor_url(@neighbor)
    assert_response :success
  end

  test "should update neighbor" do
    patch neighbor_url(@neighbor), params: { neighbor: { location: @neighbor.location, name: @neighbor.name, residential_id: @neighbor.residential_id } }
    assert_redirected_to neighbor_url(@neighbor)
  end

  test "should destroy neighbor" do
    assert_difference('Neighbor.count', -1) do
      delete neighbor_url(@neighbor)
    end

    assert_redirected_to neighbors_url
  end
end
