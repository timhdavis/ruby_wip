require 'test_helper'

class FoundMatchesControllerTest < ActionController::TestCase
  setup do
    @found_match = found_matches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:found_matches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create found_match" do
    assert_difference('FoundMatch.count') do
      post :create, found_match: { name: @found_match.name }
    end

    assert_redirected_to found_match_path(assigns(:found_match))
  end

  test "should show found_match" do
    get :show, id: @found_match
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @found_match
    assert_response :success
  end

  test "should update found_match" do
    patch :update, id: @found_match, found_match: { name: @found_match.name }
    assert_redirected_to found_match_path(assigns(:found_match))
  end

  test "should destroy found_match" do
    assert_difference('FoundMatch.count', -1) do
      delete :destroy, id: @found_match
    end

    assert_redirected_to found_matches_path
  end
end
