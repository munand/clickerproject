require 'test_helper'

class UserTest < ActiveSupport::TestCase

  test "invalid_with_empty_attributes" do
     user = User.new # create an empty user model
     assert user.invalid? # An empty User model should be invalid
     assert user.errors[:name].any? # The name field should have validation errors
     assert user.errors[:password_digest].any? # The password field should have validation errors
  end

  test "requires_name" do
     user = User.create(:name => "Munand")
     assert user.invalid?
     assert user.errors[:password_digest].any?
  end

  test "requires_password_digest" do
     user = User.create(:password_confirmation => "99999")
     assert user.invalid?
     assert user.errors[:name].any?
  end

  test "user not valid without a unique name" do
     user = User.new(:name => users(:newuser).name,
                     :password => "howru")
     assert !user.save
     assert_equal I18n.translate('activerecord.errors.messages.taken'),
              user.errors[:name].join('; ')
  end

end
