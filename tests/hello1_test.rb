# test.rb
require 'minitest/autorun'
require 'minitest/spec'

class AnotherTest < Minitest::Test
  def test_pass1
    'passed'
  end
  
  def test_pass2
    'passed'
  end

  def test_pass3
    assert_equal 5, 5
    'passed'
  end
end