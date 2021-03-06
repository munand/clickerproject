require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  
  test "invalid_with_empty_attributes" do
     question = Question.new # create an empty Question model
     assert question.invalid? # An empty Question model should be invalid
     assert question.errors[:question_text].any? # The question_text field should have validation errors
     assert question.errors[:correct_answer].any? # The correct_answer field should have validation errors
     assert question.errors[:answer_a].any? # The answer_a field should have validation errors
     assert question.errors[:answer_b].any? # The answer_b field should have validation errors
     assert question.errors[:answer_c].any? # The answer_c field should have validation errors
     assert question.errors[:answer_d].any? # The answer_d field should have validation errors
  end

  test "requires_question_text" do
     question = Question.create(:question_text => "My awesome question?")
     assert question.invalid?
     assert question.errors[:correct_answer].any? 
     assert question.errors[:answer_a].any? 
     assert question.errors[:answer_b].any? 
     assert question.errors[:answer_c].any? 
     assert question.errors[:answer_d].any? 
  end

  test "requires_correct_answer" do
     question = Question.create(:correct_answer => "y")
     assert question.invalid?
     assert question.errors[:question_text].any?
     assert question.errors[:answer_a].any? 
     assert question.errors[:answer_b].any? 
     assert question.errors[:answer_c].any? 
     assert question.errors[:answer_d].any? 
  end

  test "requires_answer_a" do
     question = Question.create(:answer_a => "a")
     assert question.invalid?
     assert question.errors[:question_text].any?
     assert question.errors[:correct_answer].any?
     assert question.errors[:answer_b].any? 
     assert question.errors[:answer_c].any? 
     assert question.errors[:answer_d].any?
  end

  test "requires_answer_b" do
     question = Question.create(:answer_b => "b")
     assert question.invalid?
     assert question.errors[:question_text].any?
     assert question.errors[:correct_answer].any?
     assert question.errors[:answer_a].any? 
     assert question.errors[:answer_c].any? 
     assert question.errors[:answer_d].any?
  end

  test "requires_answer_c" do
     question = Question.create(:answer_c => "c")
     assert question.invalid?
     assert question.errors[:question_text].any?
     assert question.errors[:correct_answer].any?
     assert question.errors[:answer_a].any? 
     assert question.errors[:answer_b].any? 
     assert question.errors[:answer_d].any?
  end

  test "requires_answer_d" do
     question = Question.create(:answer_d => "d")
     assert question.invalid?
     assert question.errors[:question_text].any?
     assert question.errors[:correct_answer].any?
     assert question.errors[:answer_a].any? 
     assert question.errors[:answer_b].any? 
     assert question.errors[:answer_c].any?
  end

end
