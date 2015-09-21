$LOAD_PATH.unshift(File.dirname(__FILE__)) unless $LOAD_PATH.include?(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../base',__FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../base',__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../modules',__FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../modules',__FILE__))
$LOAD_PATH.unshift(File.expand_path('../../fruit',__FILE__)) unless $LOAD_PATH.include?(File.expand_path('../../fruit',__FILE__))

require 'me'

class Fruit

  include Me

  def get_fruit_name
    return self.class.name.to_s
  end
end

fruit = Fruit.new
puts fruit.get_fruit_name
puts fruit.hello