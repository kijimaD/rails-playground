require "application_system_test_case"

class RProductsTest < ApplicationSystemTestCase
  setup do
    @r_product = r_products(:one)
  end

  test "visiting the index" do
    visit r_products_url
    assert_selector "h1", text: "R Products"
  end

  test "creating a R product" do
    visit r_products_url
    click_on "New R Product"

    fill_in "Name", with: @r_product.name
    fill_in "Price", with: @r_product.price
    click_on "Create R product"

    assert_text "R product was successfully created"
    click_on "Back"
  end

  test "updating a R product" do
    visit r_products_url
    click_on "Edit", match: :first

    fill_in "Name", with: @r_product.name
    fill_in "Price", with: @r_product.price
    click_on "Update R product"

    assert_text "R product was successfully updated"
    click_on "Back"
  end

  test "destroying a R product" do
    visit r_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "R product was successfully destroyed"
  end
end
