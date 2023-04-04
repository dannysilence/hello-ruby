# math_test.rb

require 'minitest/autorun'
require 'minitest/spec'
require_relative '../src/math'

class MyMathTest < Minitest::Test
  def test_1
    puts 'hello'
  end

  def test_add
    var0=10
    var1=MyMath.add(var0,1)
   
    assert_equal var1,(var0+1)
  end

  def test_sub
    var0=10
    var1=MyMath.sub(var0,1)

    assert_equal var1,(var0-1)
  end

  def test_mul
    var0=8
    var1=MyMath.mul(var0,2)

    assert_equal var1,(var0*2)
  end

  def test_div
    var0=12
    var1=MyMath.div(var0,4)

    assert_equal var1,(var0/4)
  end
end

