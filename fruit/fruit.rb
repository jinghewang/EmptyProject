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

puts '-----------------------'
a=["aa",4,5,"bb"]
b=[4,1,3,2,5]

puts (a + b).join(',')
puts (a*2).join(',');
puts (b-a).join(',');
puts (a | b).join(',');
puts (a & b).join(',');
puts (b.sort()).join(',');
puts (b.sort().reverse).join(',');


puts '------------------------'

str1 = 'this is str1'
str2 = "this is str2"
str3 = %q/this is str3/
str4 = %Q/this is str4/
str5 = <<OK_str
Here is string document, str5
line one;
line two;
line three.
OK
OK_str
puts str1,str2
puts str3
puts str4
puts str5


puts '--------------------------------'
a = 'a';b = 'b'
puts 'a' + 'b'
a += b;
puts a << '--' << b
puts b * 3
puts '123456'[2,3]

puts "this is row 1\n row 2"
puts 'this is row 1\n row 2'
puts "this is row 1 b:#{b} \n row 2 a:#{a}"


puts '-------------------------------------------'
str="Hello,kaichuan,Welcome!"
puts str =~ /kaichuan/ #6
puts str =~ /a/ #7
puts str =~ /ABC/ #nil

puts (1..9).each{|i| puts i;}
puts '-------------------------------------------'
puts [1,2,3].each{|i| print i}


# block define
def one_block
  for num in 1..3
    yield(num)
  end
end

one_block do |i|
  puts "this is block:#{i}"
end

puts '---------------------------------------'
def method(pr)
  puts pr.call(7)
end


oneProc = proc{|k| k *= 3}
method(oneProc)



puts '=============================='
def method(n)
  return proc{|i| puts "i:#{i} n:#{n}";n +=i }
end

oneProc = method(3)
puts oneProc.call(9)
puts oneProc.call 5



