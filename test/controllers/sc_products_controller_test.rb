require 'test_helper'

class ScProductsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sc_product = sc_products(:one)
  end

  test "should get index" do
    get sc_products_url
    assert_response :success
  end

  test "should get new" do
    get new_sc_product_url
    assert_response :success
  end

  test "should create sc_product" do
    assert_difference('ScProduct.count') do
      post sc_products_url, params: { sc_product: { name: @sc_product.name, price: @sc_product.price } }
    end

    assert_redirected_to sc_product_url(ScProduct.last)
  end

  test "should show sc_product" do
    get sc_product_url(@sc_product)
    assert_response :success
  end

  test "should get edit" do
    get edit_sc_product_url(@sc_product)
    assert_response :success
  end

  test "should update sc_product" do
    patch sc_product_url(@sc_product), params: { sc_product: { name: @sc_product.name, price: @sc_product.price } }
    assert_redirected_to sc_product_url(@sc_product)
  end

  test "should destroy sc_product" do
    assert_difference('ScProduct.count', -1) do
      delete sc_product_url(@sc_product)
    end

    assert_redirected_to sc_products_url
  end
end
