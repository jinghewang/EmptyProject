# 我是单行注释

=begin
我是多行注释
puts 6/5
puts 6/5.0
多行注释可以用=begin 和 =end ；
实际上，这也是 Ruby 的内嵌文档（Rdoc）注释，类似 javadoc ，
可以用命令 r i 从源文件生产文档。
=end

class Hello

  # 单行文本
  puts 3/5
  puts 3/5.0

  # 多行文本
  puts 3/6;puts 3/4.0

  #这里演示的连线
  puts "这里演示的是" \
      "连线"

  # 换行测试
  printf "Number: %4.3f, String: %s", 7.8, "hi!"
  printf "\nnubmerr %d",232
  puts 123,456,789

  # gets 测试
  puts "输入一些内容："
  $name = STDIN.gets
  puts "Hi "+$name


end