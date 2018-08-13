require "application_system_test_case"

class SigninsTest < ApplicationSystemTestCase
  setup do
    @signin = signins(:one)
  end

  test "visiting the index" do
    visit signins_url
    assert_selector "h1", text: "Signins"
  end

  test "creating a Signin" do
    visit signins_url
    click_on "New Signin"

    fill_in "Company", with: @signin.company
    fill_in "Name", with: @signin.name
    fill_in "Purpose", with: @signin.purpose
    click_on "Create Signin"

    assert_text "Signin was successfully created"
    click_on "Back"
  end

  test "updating a Signin" do
    visit signins_url
    click_on "Edit", match: :first

    fill_in "Company", with: @signin.company
    fill_in "Name", with: @signin.name
    fill_in "Purpose", with: @signin.purpose
    click_on "Update Signin"

    assert_text "Signin was successfully updated"
    click_on "Back"
  end

  test "destroying a Signin" do
    visit signins_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Signin was successfully destroyed"
  end
end
