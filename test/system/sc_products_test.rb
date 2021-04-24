require "application_system_test_case"

class ScProductsTest < ApplicationSystemTestCase
  setup do
    @sc_product = sc_products(:one)
  end

  test "visiting the index" do
    visit sc_products_url
    assert_selector "h1", text: "Sc Products"
  end

  test "creating a Sc product" do
    visit sc_products_url
    click_on "New Sc Product"

    fill_in "Name", with: @sc_product.name
    fill_in "Price", with: @sc_product.price
    click_on "Create Sc product"

    assert_text "Sc product was successfully created"
    click_on "Back"
  end

  test "updating a Sc product" do
    visit sc_products_url
    click_on "Edit", match: :first

    fill_in "Name", with: @sc_product.name
    fill_in "Price", with: @sc_product.price
    click_on "Update Sc product"

    assert_text "Sc product was successfully updated"
    click_on "Back"
  end

  test "destroying a Sc product" do
    visit sc_products_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sc product was successfully destroyed"
  end
end
