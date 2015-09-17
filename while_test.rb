class WhileTest

  puts '-------while---------'
  # 单行 while
  x = 3
  (puts x; x += 1;) while x < 8

  # 多行 while
  x = 1 ; y =10
  while x < 10
    puts x
    x += 1
  end

end