require "application_system_test_case"

class FirsTest < ApplicationSystemTestCase
  setup do
    @fir = firs(:one)
  end

  test "visiting the index" do
    visit firs_url
    assert_selector "h1", text: "Firs"
  end

  test "should create fir" do
    visit firs_url
    click_on "New fir"

    fill_in "First name", with: @fir.first_name
    fill_in "Last name", with: @fir.last_name
    click_on "Create Fir"

    assert_text "Fir was successfully created"
    click_on "Back"
  end

  test "should update Fir" do
    visit fir_url(@fir)
    click_on "Edit this fir", match: :first

    fill_in "First name", with: @fir.first_name
    fill_in "Last name", with: @fir.last_name
    click_on "Update Fir"

    assert_text "Fir was successfully updated"
    click_on "Back"
  end

  test "should destroy Fir" do
    visit fir_url(@fir)
    click_on "Destroy this fir", match: :first

    assert_text "Fir was successfully destroyed"
  end
end
