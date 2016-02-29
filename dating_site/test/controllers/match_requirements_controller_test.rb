require 'test_helper'

class MatchRequirementsControllerTest < ActionController::TestCase
  setup do
    @match_requirement = match_requirements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:match_requirements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create match_requirement" do
    assert_difference('MatchRequirement.count') do
      post :create, match_requirement: { importance: @match_requirement.importance, requirement: @match_requirement.requirement, requirement_type: @match_requirement.requirement_type }
    end

    assert_redirected_to match_requirement_path(assigns(:match_requirement))
  end

  test "should show match_requirement" do
    get :show, id: @match_requirement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @match_requirement
    assert_response :success
  end

  test "should update match_requirement" do
    patch :update, id: @match_requirement, match_requirement: { importance: @match_requirement.importance, requirement: @match_requirement.requirement, requirement_type: @match_requirement.requirement_type }
    assert_redirected_to match_requirement_path(assigns(:match_requirement))
  end

  test "should destroy match_requirement" do
    assert_difference('MatchRequirement.count', -1) do
      delete :destroy, id: @match_requirement
    end

    assert_redirected_to match_requirements_path
  end
end
