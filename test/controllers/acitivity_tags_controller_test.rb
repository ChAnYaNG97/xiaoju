require 'test_helper'

class AcitivityTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @acitivity_tag = acitivity_tags(:one)
  end

  test "should get index" do
    get acitivity_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_acitivity_tag_url
    assert_response :success
  end

  test "should create acitivity_tag" do
    assert_difference('AcitivityTag.count') do
      post acitivity_tags_url, params: { acitivity_tag: { acitivity_id: @acitivity_tag.acitivity_id, tag_id: @acitivity_tag.tag_id } }
    end

    assert_redirected_to acitivity_tag_url(AcitivityTag.last)
  end

  test "should show acitivity_tag" do
    get acitivity_tag_url(@acitivity_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_acitivity_tag_url(@acitivity_tag)
    assert_response :success
  end

  test "should update acitivity_tag" do
    patch acitivity_tag_url(@acitivity_tag), params: { acitivity_tag: { acitivity_id: @acitivity_tag.acitivity_id, tag_id: @acitivity_tag.tag_id } }
    assert_redirected_to acitivity_tag_url(@acitivity_tag)
  end

  test "should destroy acitivity_tag" do
    assert_difference('AcitivityTag.count', -1) do
      delete acitivity_tag_url(@acitivity_tag)
    end

    assert_redirected_to acitivity_tags_url
  end
end
