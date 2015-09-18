require File.dirname(__FILE__)+'/person.rb'

class Worker < Person

  def talk
    puts "I am a worker. my name is "+@name+", age is "+@age.to_s
  end
end

# -----------------------------------------
puts '---------------p1-----------------'
p1 = Person.new("wjh", "25")
p1.talk

# p2
puts '---------------p2-----------------'
p2 = Person.new("Ben")
p2.motherland = "ABC"
p2.addr = "BeiJing"
p2.talk()

# p5
puts '---------------p5-----------------'
p5=Worker.new("kaichuan", 30);
p5.talk

# p6
puts '---------------p6-----------------'
p6=Worker.new("Ben");
p6.talk