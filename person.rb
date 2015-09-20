class Person

  @@count = 0;

  def initialize(name , age =18)
  end

  def talk
    puts "public:talk ,call speak"
    speak
  end

  def speak
    puts "protected:speak, call laugh"
    laugh
  end

  def laugh
    puts "private:langh"
  end

  protected :speak
  private :laugh

end

p1 = Person.new("wjh")
p1.talk
# p1.speak
# p1.langh