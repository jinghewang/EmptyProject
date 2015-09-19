require File.dirname(__FILE__)+'/person.rb'

class Student < Person

  def talk
    super
    puts "I am student , my name is:" + @name + " and age is:" + @age.to_s()

  end

  undef notalk

end

# 单例方法
p3= Student.new("kaichuan",25);
p = Person.new("wjh")
p2 = Person.new("wjh2")
p3.talk
puts Person.instance_count
def p.talk()
  puts 'p----3-3--33--4-4-'
end

def p.talk2()
  puts 'p-talk2'
end


def p2.talk()
  puts 'p2----3-3--33--4-4-'
end


p.talk
p.talk2
p2.talk