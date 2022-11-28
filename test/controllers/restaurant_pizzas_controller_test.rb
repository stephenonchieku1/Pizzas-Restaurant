require "test_helper"

class RestaurantPizzasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get restaurant_pizzas_index_url
    assert_response :success
  end

  test "should get create" do
    get restaurant_pizzas_create_url
    assert_response :success
  end

  test "should get update" do
    get restaurant_pizzas_update_url
    assert_response :success
  end
end
