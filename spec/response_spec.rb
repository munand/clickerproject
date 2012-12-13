require 'spec_helper'

describe Response do
	before(:each) do
		@response = Response.new(valid_attributes)
	end

	it "should not be_valid without a answer" do
		@response.answer = ''
		@response.should_not be_valid
	end

	it "should not be_valid without a question id" do
		@response.question_id = ''
		@response.should_not be_valid
	end

        it "should not be_valid without a user id" do
		@response.user_id = ''
		@response.should_not be_valid
	end
        
	it "should be valid" do
		@response.should be_valid
	end
	def valid_attributes
		{:answer => 'answer', :question_id => '2', :user_id => '1'}
	end
end

