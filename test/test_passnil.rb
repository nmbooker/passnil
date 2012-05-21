require File.dirname(__FILE__) + '/test_helper.rb'

class TestPassnil < Test::Unit::TestCase

  def setup
  end
  
  def test_passnil
    assert_nil nil.passnil { |x| x }
    assert_equal nil.passnil('nothing here') { |x| x }, 'nothing here'
    assert_equal 'abc'.passnil { |x| x.upcase }, 'ABC'
  end
end
