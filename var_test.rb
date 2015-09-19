require File.dirname(__FILE__)+'/helper.rb'

class VarTest

  def self.Test()
    a = 123
    b = "wjh"
    Helper.out_var(a,b)
    a = "qq"
    b = [1,2,3]
    Helper.out_var(a,b)
  end

  def initialize()

  end

  def getage(a, b=2)
    return a + b;
  end

  def sum(*nums)
    numSum = 0
    nums.each{|i| numSum+=i}
    return numSum
  end

  def test(a)
    puts "v1--a:#{a}"
  end

  def test(a,b=2)
    puts "v2--a:#{a} b:#{b}"
  end

  def talk()
    puts "I am #{@date}"
    return true
  end

  attr_accessor :date
  attr_writer :dateWriter
  attr_reader :dateReader
end


vartest = VarTest.new
vartest.date = 'wjh'
puts vartest.test(2),vartest.test(2,3);
exit;

puts vartest.getage(3),vartest.getage(3,2),vartest.sum(1,2,3)



exit

VarTest.Test

# 删除方法
class VarTest
  undef talk
end

vartest.talk
