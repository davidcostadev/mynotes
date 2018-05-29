require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  def setup
    @note = notes(:one)
    @user = users(:one)
    @category = categories(:one)
  end

  test 'should not save withou a title and category and user' do
    note = Note.new
    assert_not note.save
    assert_not_nil note.errors[:title]
    assert_not_nil note.errors[:category]
    assert_not_nil note.errors[:user]
  end

  test 'should save be note valid' do
    assert @note.valid?
  end

  test 'should get user' do
    assert @user == @note.user
  end

  test 'should get category' do
    assert @category == @note.category
  end
end
