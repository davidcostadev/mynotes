require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  def setup
    @category = categories(:one)
  end

  test 'should be valid' do
    assert @category.valid?
  end
end
