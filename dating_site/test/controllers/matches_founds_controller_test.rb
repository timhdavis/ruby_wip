require 'test_helper'

class MatchesFoundsControllerTest < ActionController::TestCase
  setup do
    @matches_found = matches_founds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:matches_founds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create matches_found" do
    assert_difference('MatchesFound.count') do
      post :create, matches_found: { name: @matches_found.name }
    end

    assert_redirected_to matches_found_path(assigns(:matches_found))
  end

  test "should show matches_found" do
    get :show, id: @matches_found
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @matches_found
    assert_response :success
  end

  test "should update matches_found" do
    patch :update, id: @matches_found, matches_found: { name: @matches_found.name }
    assert_redirected_to matches_found_path(assigns(:matches_found))
  end

  test "should destroy matches_found" do
    assert_difference('MatchesFound.count', -1) do
      delete :destroy, id: @matches_found
    end

    assert_redirected_to matches_founds_path
  end
end
