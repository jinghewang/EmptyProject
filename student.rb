require File.dirname(__FILE__)+'/person.rb'

class Student < Person

  def talk
    puts "I am student , my name is:" + @name + " and age is:" + @age.to_s()

  end

end


p3= Student.new("kaichuan",25);
p3.talk
