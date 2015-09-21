$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../base',__FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../base',__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules',__FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules',__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../f1',__FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../f1',__FILE__))

require 'me'
require 'mod'

class Fruit

  include Me

  def get_fruit_name
    return self.class.name.to_s
  end
end



f1 = Fruit.new
f2 = Fruit.new
puts f1.get_fruit_name
puts f1.hello
f2.extend(Mod)
f2.hello2
# f1.hello2 # error used