require "application_system_test_case"

class FsTest < ApplicationSystemTestCase
  setup do
    @f = fs(:one)
  end

  test "visiting the index" do
    visit fs_url
    assert_selector "h1", text: "Fs"
  end

  test "should create f" do
    visit fs_url
    click_on "New f"

    fill_in "First name", with: @f.first_name
    fill_in "Last name", with: @f.last_name
    click_on "Create F"

    assert_text "F was successfully created"
    click_on "Back"
  end

  test "should update F" do
    visit f_url(@f)
    click_on "Edit this f", match: :first

    fill_in "First name", with: @f.first_name
    fill_in "Last name", with: @f.last_name
    click_on "Update F"

    assert_text "F was successfully updated"
    click_on "Back"
  end

  test "should destroy F" do
    visit f_url(@f)
    click_on "Destroy this f", match: :first

    assert_text "F was successfully destroyed"
  end
end
