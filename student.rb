$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))

require 'person'
require 'my_module'

class Student < Person

  include MyModule

  def useTalk
    puts talk
  end

  def useSpeak
    puts speak
  end

  def useLaugh
    puts laugh
  end


end

# 单例方法
# student = Student.new("kaichuan");
# student.useTalk
# student.useSpeak
# student.useLaugh

puts Math::PI,Math.sqrt(2)

# require_rel 'my_module'
# puts MyModule::APPID,MyModule::talk('wjh')

# include Math
#puts sqrt(2)

# include MyModule
# puts sqrt(2)

# 1122
p1 = Student.new('qq')
puts p1.sqrt(2)


exit
p2 = Person.new('zz')
p2.useSpeak(p1)
# p2.useLaugh(p1)
