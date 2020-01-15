require "application_system_test_case"

class AcitivityTagsTest < ApplicationSystemTestCase
  setup do
    @acitivity_tag = acitivity_tags(:one)
  end

  test "visiting the index" do
    visit acitivity_tags_url
    assert_selector "h1", text: "Acitivity Tags"
  end

  test "creating a Acitivity tag" do
    visit acitivity_tags_url
    click_on "New Acitivity Tag"

    fill_in "Acitivity", with: @acitivity_tag.acitivity_id
    fill_in "Tag", with: @acitivity_tag.tag_id
    click_on "Create Acitivity tag"

    assert_text "Acitivity tag was successfully created"
    click_on "Back"
  end

  test "updating a Acitivity tag" do
    visit acitivity_tags_url
    click_on "Edit", match: :first

    fill_in "Acitivity", with: @acitivity_tag.acitivity_id
    fill_in "Tag", with: @acitivity_tag.tag_id
    click_on "Update Acitivity tag"

    assert_text "Acitivity tag was successfully updated"
    click_on "Back"
  end

  test "destroying a Acitivity tag" do
    visit acitivity_tags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acitivity tag was successfully destroyed"
  end
end
