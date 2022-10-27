require "application_system_test_case"

class LensesTest < ApplicationSystemTestCase
  setup do
    @lense = lenses(:one)
  end

  test "visiting the index" do
    visit lenses_url
    assert_selector "h1", text: "Lenses"
  end

  test "creating a Lense" do
    visit lenses_url
    click_on "New Lense"

    fill_in "Colour", with: @lense.colour
    fill_in "Description", with: @lense.description
    fill_in "Lens type", with: @lense.lens_type
    fill_in "Prescription type", with: @lense.prescription_type
    fill_in "Price", with: @lense.price
    fill_in "Stock", with: @lense.stock
    click_on "Create Lense"

    assert_text "Lense was successfully created"
    click_on "Back"
  end

  test "updating a Lense" do
    visit lenses_url
    click_on "Edit", match: :first

    fill_in "Colour", with: @lense.colour
    fill_in "Description", with: @lense.description
    fill_in "Lens type", with: @lense.lens_type
    fill_in "Prescription type", with: @lense.prescription_type
    fill_in "Price", with: @lense.price
    fill_in "Stock", with: @lense.stock
    click_on "Update Lense"

    assert_text "Lense was successfully updated"
    click_on "Back"
  end

  test "destroying a Lense" do
    visit lenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lense was successfully destroyed"
  end
end
