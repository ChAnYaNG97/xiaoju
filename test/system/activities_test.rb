require "application_system_test_case"

class ActivitiesTest < ApplicationSystemTestCase
  setup do
    @activity = activities(:one)
  end

  test "visiting the index" do
    visit activities_url
    assert_selector "h1", text: "Activities"
  end

  test "creating a Activity" do
    visit activities_url
    click_on "New Activity"

    fill_in "Description", with: @activity.description
    fill_in "Detail", with: @activity.detail
    fill_in "Location", with: @activity.location
    fill_in "Max number", with: @activity.max_number
    fill_in "Name", with: @activity.name
    fill_in "Pic url", with: @activity.pic_url
    fill_in "Start time", with: @activity.start_time
    click_on "Create Activity"

    assert_text "Activity was successfully created"
    click_on "Back"
  end

  test "updating a Activity" do
    visit activities_url
    click_on "Edit", match: :first

    fill_in "Description", with: @activity.description
    fill_in "Detail", with: @activity.detail
    fill_in "Location", with: @activity.location
    fill_in "Max number", with: @activity.max_number
    fill_in "Name", with: @activity.name
    fill_in "Pic url", with: @activity.pic_url
    fill_in "Start time", with: @activity.start_time
    click_on "Update Activity"

    assert_text "Activity was successfully updated"
    click_on "Back"
  end

  test "destroying a Activity" do
    visit activities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Activity was successfully destroyed"
  end
end
