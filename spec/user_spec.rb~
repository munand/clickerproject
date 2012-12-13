require 'spec_helper'

describe User do
	before(:each) do
		@user = User.new(valid_attributes)
	end

	it "should not be_valid without a name" do
		@user.name = ''
		@user.should_not be_valid
	end

	it "should not be_valid without a password" do
		@user.password = ''
		@user.should_not be_valid
	end

        it "should not be_valid without a password confirmation" do
		@user.password_confirmation = ''
		@user.should_not be_valid
	end

        it "should be not valid" do
		@user.should_not be_valid
	end
	def valid_attributes
		{:name => 'your name', :password => '22222', :password => '22222'}
	end
end
