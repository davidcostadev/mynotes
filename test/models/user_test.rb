require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = users(:one)
    @user.password = '123456'
    notes(:one)
  end

  test 'valid user' do
    assert @user.valid?
  end

  test 'invalid without email' do
    @user.email = nil
    refute @user.valid?, 'user is valid without email'
    assert_not_nil @user.errors[:email]
  end

  test 'user notes' do
    assert_equal 1, @user.notes.size
  end
end
