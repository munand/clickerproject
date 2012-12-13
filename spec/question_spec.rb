require 'spec_helper'

describe Question do
	before(:each) do
		@question = Question.new(valid_attributes)
	end
	it "should not be_valid without a question text" do
		@question.question_text = ''
		@question.should_not be_valid
	end
	it "should not be_valid without a correct answer" do
		@question.correct_answer = ''
		@question.should_not be_valid
	end
        it "should not be_valid without a answer_a" do
		@question.answer_a = ''
		@question.should_not be_valid
	end
        it "should not be_valid without a answer_b" do
		@question.answer_b = ''
		@question.should_not be_valid
	end
        it "should not be_valid without a answer_c" do
		@question.answer_c = ''
		@question.should_not be_valid
	end
        it "should not be_valid without a answer_d" do
		@question.answer_d = ''
		@question.should_not be_valid
	end
	it "should be valid" do
		@question.should_not be_valid
	end
	def valid_attributes
		{:question_text => 'question text', :correct_answer => 'specify correct answer', :answer_a => 'a', :answer_b => 'b', :answer_c => 'c', :answer_d => 'd'}
	end
end

