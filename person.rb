$LOAD_PATH.unshift(File.expand_path('../modules',__FILE__)) unless $LOAD_PATH.include?(File.expand_path('../modules',__FILE__))
$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))


class Person

  @@count = 0;
  @appid = 'hlt'

  def initialize(name , age =18)
  end

  def talk
    puts 'public:talk '
  end

  def speak
    puts 'protected:speak '
  end

  def laugh
    puts 'private:langh '
  end

  def useSpeak(another)
    puts another.speak
  end

  def useLaugh(another)
    puts another.laugh
  end

  public :talk
  protected :speak
  private :laugh

end

# p1 = Person.new("wjh")
# p1.talk
# p1.speak
# p1.langh