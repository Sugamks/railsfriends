require "test_helper"

class FirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fir = firs(:one)
  end

  test "should get index" do
    get firs_url
    assert_response :success
  end

  test "should get new" do
    get new_fir_url
    assert_response :success
  end

  test "should create fir" do
    assert_difference("Fir.count") do
      post firs_url, params: { fir: { first_name: @fir.first_name, last_name: @fir.last_name } }
    end

    assert_redirected_to fir_url(Fir.last)
  end

  test "should show fir" do
    get fir_url(@fir)
    assert_response :success
  end

  test "should get edit" do
    get edit_fir_url(@fir)
    assert_response :success
  end

  test "should update fir" do
    patch fir_url(@fir), params: { fir: { first_name: @fir.first_name, last_name: @fir.last_name } }
    assert_redirected_to fir_url(@fir)
  end

  test "should destroy fir" do
    assert_difference("Fir.count", -1) do
      delete fir_url(@fir)
    end

    assert_redirected_to firs_url
  end
end
