require "test_helper"

class LensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lense = lenses(:one)
  end

  test "should get index" do
    get lenses_url
    assert_response :success
  end

  test "should get new" do
    get new_lense_url
    assert_response :success
  end

  test "should create lense" do
    assert_difference('Lense.count') do
      post lenses_url, params: { lense: { colour: @lense.colour, description: @lense.description, lens_type: @lense.lens_type, prescription_type: @lense.prescription_type, price: @lense.price, stock: @lense.stock } }
    end

    assert_redirected_to lense_url(Lense.last)
  end

  test "should show lense" do
    get lense_url(@lense)
    assert_response :success
  end

  test "should get edit" do
    get edit_lense_url(@lense)
    assert_response :success
  end

  test "should update lense" do
    patch lense_url(@lense), params: { lense: { colour: @lense.colour, description: @lense.description, lens_type: @lense.lens_type, prescription_type: @lense.prescription_type, price: @lense.price, stock: @lense.stock } }
    assert_redirected_to lense_url(@lense)
  end

  test "should destroy lense" do
    assert_difference('Lense.count', -1) do
      delete lense_url(@lense)
    end

    assert_redirected_to lenses_url
  end
end
