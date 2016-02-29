require 'test_helper'

class MatchOptionsControllerTest < ActionController::TestCase
  setup do
    @match_option = match_options(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_options)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_option" do
    assert_difference('MatchOption.count') do
      post :create, match_option: { importance: @match_option.importance, requirement: @match_option.requirement, type: @match_option.type }
    end

    assert_redirected_to match_option_path(assigns(:match_option))
  end

  test "should show match_option" do
    get :show, id: @match_option
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_option
    assert_response :success
  end

  test "should update match_option" do
    patch :update, id: @match_option, match_option: { importance: @match_option.importance, requirement: @match_option.requirement, type: @match_option.type }
    assert_redirected_to match_option_path(assigns(:match_option))
  end

  test "should destroy match_option" do
    assert_difference('MatchOption.count', -1) do
      delete :destroy, id: @match_option
    end

    assert_redirected_to match_options_path
  end
end
