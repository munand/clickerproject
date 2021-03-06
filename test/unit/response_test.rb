require 'test_helper'

class ResponseTest < ActiveSupport::TestCase

  test "invalid_with_empty_attributes" do
     response = Response.new # create an empty Response model
     assert response.invalid? # An empty Response model should be invalid
     assert response.errors[:answer].any? # The answer field should have validation errors
     assert response.errors[:question_id].any? # The question_id field should have validation errors
     assert response.errors[:user_id].any? # The user_id field should have validation errors
  end

  test "requires_answer" do
     response = Response.create(:answer => "My best answer..!!!")
     assert response.invalid?
     assert response.errors[:question_id].any?
     assert response.errors[:user_id].any?
  end

  test "requires_question_id" do
     response = Response.create(:question_id => "2")
     assert response.invalid?
     assert response.errors[:answer].any?
     assert response.errors[:user_id].any?
  end

  test "requires_user_id" do
     response = Response.create(:user_id => "1")
     assert response.invalid?
     assert response.errors[:answer].any?
     assert response.errors[:question_id].any?
  end

  test "valid_with_answer_question_id_and_user_id" do
     response = Response.create(:answer => "My best answer..!!!", :question_id => "2", :user_id => "1")
     assert response.valid?
  end

end
