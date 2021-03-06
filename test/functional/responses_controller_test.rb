require 'test_helper'

class ResponsesControllerTest < ActionController::TestCase
  setup do
    @myresponse = responses(:one)
    @user = users(:one)
    @question = questions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:responses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create response" do
    assert_difference('Response.count') do
      post :create, question_id: @question.id, user_id: @user.id, response: { answer: @myresponse.answer, question_id: @myresponse.question_id, user_id: @myresponse.user_id }
    end

    assert_redirected_to response_path(assigns(:question))
  end

  test "should show response" do
    get :show, id: @myresponse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @myresponse
    assert_response :success
  end

  test "should update response" do
    put :update, id: @myresponse, response: { answer: @myresponse.answer, question_id: @myresponse.question_id, user_id: @myresponse.user_id }
    assert_redirected_to response_path(assigns(:response))
  end

  test "should destroy response" do
    assert_difference('Response.count', -1) do
      delete :destroy, id: @myresponse
    end

    assert_redirected_to responses_path
  end
end
