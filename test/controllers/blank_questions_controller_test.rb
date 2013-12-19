require 'test_helper'

class BlankQuestionsControllerTest < ActionController::TestCase
  setup do
    @blank_question = blank_questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blank_questions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blank_question" do
    assert_difference('BlankQuestion.count') do
      post :create, blank_question: { content: @blank_question.content, title: @blank_question.title }
    end

    assert_redirected_to blank_question_path(assigns(:blank_question))
  end

  test "should show blank_question" do
    get :show, id: @blank_question
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @blank_question
    assert_response :success
  end

  test "should update blank_question" do
    patch :update, id: @blank_question, blank_question: { content: @blank_question.content, title: @blank_question.title }
    assert_redirected_to blank_question_path(assigns(:blank_question))
  end

  test "should destroy blank_question" do
    assert_difference('BlankQuestion.count', -1) do
      delete :destroy, id: @blank_question
    end

    assert_redirected_to blank_questions_path
  end
end
