require "application_system_test_case"

class AttendsTest < ApplicationSystemTestCase
  setup do
    @attend = attends(:one)
  end

  test "visiting the index" do
    visit attends_url
    assert_selector "h1", text: "Attends"
  end

  test "creating a Attend" do
    visit attends_url
    click_on "New Attend"

    fill_in "Activity", with: @attend.activity_id
    fill_in "User", with: @attend.user_id
    click_on "Create Attend"

    assert_text "Attend was successfully created"
    click_on "Back"
  end

  test "updating a Attend" do
    visit attends_url
    click_on "Edit", match: :first

    fill_in "Activity", with: @attend.activity_id
    fill_in "User", with: @attend.user_id
    click_on "Update Attend"

    assert_text "Attend was successfully updated"
    click_on "Back"
  end

  test "destroying a Attend" do
    visit attends_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attend was successfully destroyed"
  end
end
