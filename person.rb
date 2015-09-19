class Person

  @@count = 0;

  $global_name = 'hlt'

  def initialize(name , age =18)
    @name = name
    @age = age
    @motherland = "China"
    @addr = ""

    @@count += 1
  end

  def self.instance_count()
    return @@count
  end

  # getter and setter 方式
  def addr=(value)
    return @addr =value
  end

  def addr
    return @addr
  end

  # getter and setter 方式2
  attr_writer :motherland

  def talk
    puts "my name is:" + @name + " and age is :" + @age.to_s() + " and my addr is:" + @addr
    if @motherland == "China" then
      puts "I am chinese"
    else
      puts "I am foreigner"
    end
  end

  def notalk()

  end

end