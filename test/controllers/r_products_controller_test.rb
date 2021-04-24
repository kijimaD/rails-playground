require 'test_helper'

class RProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @r_product = r_products(:one)
  end

  test "should get index" do
    get r_products_url
    assert_response :success
  end

  test "should get new" do
    get new_r_product_url
    assert_response :success
  end

  test "should create r_product" do
    assert_difference('RProduct.count') do
      post r_products_url, params: { r_product: { name: @r_product.name, price: @r_product.price } }
    end

    assert_redirected_to r_product_url(RProduct.last)
  end

  test "should show r_product" do
    get r_product_url(@r_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_r_product_url(@r_product)
    assert_response :success
  end

  test "should update r_product" do
    patch r_product_url(@r_product), params: { r_product: { name: @r_product.name, price: @r_product.price } }
    assert_redirected_to r_product_url(@r_product)
  end

  test "should destroy r_product" do
    assert_difference('RProduct.count', -1) do
      delete r_product_url(@r_product)
    end

    assert_redirected_to r_products_url
  end
end
