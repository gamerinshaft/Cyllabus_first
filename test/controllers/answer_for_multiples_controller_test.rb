require 'test_helper'

class AnswerForMultiplesControllerTest < ActionController::TestCase
  setup do
    @answer_for_multiple = answer_for_multiples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:answer_for_multiples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create answer_for_multiple" do
    assert_difference('AnswerForMultiple.count') do
      post :create, answer_for_multiple: { check: @answer_for_multiple.check, content: @answer_for_multiple.content }
    end

    assert_redirected_to answer_for_multiple_path(assigns(:answer_for_multiple))
  end

  test "should show answer_for_multiple" do
    get :show, id: @answer_for_multiple
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @answer_for_multiple
    assert_response :success
  end

  test "should update answer_for_multiple" do
    patch :update, id: @answer_for_multiple, answer_for_multiple: { check: @answer_for_multiple.check, content: @answer_for_multiple.content }
    assert_redirected_to answer_for_multiple_path(assigns(:answer_for_multiple))
  end

  test "should destroy answer_for_multiple" do
    assert_difference('AnswerForMultiple.count', -1) do
      delete :destroy, id: @answer_for_multiple
    end

    assert_redirected_to answer_for_multiples_path
  end
end
