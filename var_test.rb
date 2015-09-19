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
puts vartest.talk

exit

VarTest.Test

# 删除方法
class VarTest
  undef talk
end

vartest.talk
