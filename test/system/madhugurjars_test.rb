require "application_system_test_case"

class MadhugurjarsTest < ApplicationSystemTestCase
  setup do
    @madhugurjar = madhugurjars(:one)
  end

  test "visiting the index" do
    visit madhugurjars_url
    assert_selector "h1", text: "Madhugurjars"
  end

  test "creating a Madhugurjar" do
    visit madhugurjars_url
    click_on "New Madhugurjar"

    fill_in "Email", with: @madhugurjar.email
    fill_in "Name", with: @madhugurjar.name
    fill_in "Phone", with: @madhugurjar.phone
    click_on "Create Madhugurjar"

    assert_text "Madhugurjar was successfully created"
    click_on "Back"
  end

  test "updating a Madhugurjar" do
    visit madhugurjars_url
    click_on "Edit", match: :first

    fill_in "Email", with: @madhugurjar.email
    fill_in "Name", with: @madhugurjar.name
    fill_in "Phone", with: @madhugurjar.phone
    click_on "Update Madhugurjar"

    assert_text "Madhugurjar was successfully updated"
    click_on "Back"
  end

  test "destroying a Madhugurjar" do
    visit madhugurjars_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Madhugurjar was successfully destroyed"
  end
end
