require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "invalid_with_empty_attributes" do
     user = User.new # create an empty user model
     assert user.invalid? # An empty User model should be invalid
     assert user.errors[:name].any? # The name field should have validation errors
     assert user.errors[:password].any? # The password field should have validation errors
     assert user.errors[:password_confirmation].any? # The password_confirmation field should have validation errors
  end

  test "requires_name" do
     user = User.create(:name => "Munand")
     assert user.invalid?
     assert user.errors[:password].any?
     assert user.errors[:password_confirmation].any?
  end

  test "requires_password" do
     user = User.create(:password => "99999")
     assert user.invalid?
     assert user.errors[:name].any?
     assert user.errors[:password_confirmation].any?
  end

  test "requires_password_confirmation" do
     user = User.create(:password_confirmation => "99999")
     assert user.invalid?
     assert user.errors[:name].any?
     assert user.errors[:password].any?
  end

  test "valid_with_name_password_and_password_confirmation" do
     user = User.create(:name => "Munand", :password => "99999", :password_confirmation => "99999")
     assert user.valid?
end

end
