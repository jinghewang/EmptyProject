class Student



  puts '-------if---------'
  # 单行if
  x = 3 ; y = 6
  (printf '%s < %s',x,y) if x < y

  # 多行if
  x = 3 ; y = 6
  msg = ''
  if x < y then
    msg = 'x<y'
  elsif x > y then
    msg = 'x > y'
  else
    msg = 'x==y'
  end
  puts msg

  puts '-------case---------'
  case x
    when 1..2
      puts '1..2'
    when 4..9,0
      puts '4..9,0'
    else
      puts 'other'
  end

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

  puts '-------until---------'
  x = 1
  until x >= 10
    puts x
    x += 1
  end


  puts '-------for unless---------'
  list = ['wjh', 'lvkui', 'wangjingzhi']
  for x in list
    unless x == 'wjh' then
      puts x
    end
  end

  puts '-------for if not---------'
  for x in list
    if not x == 'lvkui' then
      puts x
    end
  end

  puts '-------for 2------------------'
  for x in 1..6
      puts x
  end


  puts '-------for 3------------------'
  dosth = dosth2 = false
  for x in 1..5
    for y in 1..5
      if x == 2 and y == 4 then
        next
      end
      if x == 4 and y == 4 then
        break
      end
      printf "[%s:%s]", x, y
      if x == 5 and y == 4 and !dosth then
        dosth = true
        redo
      end
      if x == 1 and y == 5 and !dosth2 then
        # dosth2 = true
        #  retry
      end
    end
    puts ''
  end


  puts "------演示redo----"
  c='a'
  for i in 1..4
    if i == 2 and c =='a'
      c = 'b'
      print "\n"
      redo
    end
    print i,c," "
  end
  puts "\n\n"


  puts "------演示retry----"
  c = 'a'
  for i in 1..4
    if i == 2 and c == 'a' then
      c = 'b'
      redo
    end
    puts i,c," "
  end



  exit


  puts '-----------------------------------'

  a = 1;b = 2;
  puts a + b
  x = 0
  a,b,c = x,(x + 1),(x + 2)
  puts a,b ,c


  puts '-----------------------------------'

  a = 1;b = 1.0
  puts a == b , a.eql?(b) , a.equal?(b)

  a = 1.0 ; b = a
  puts a.equal?(b)
  puts "aab" <=> "acb" , [5] <=> [4,9] , (0..9)=== 3.14 , ('a'..'f')=== 'c'

  puts '-----------------------------------'
  puts '%d'=~5

  exit

  puts '-----------------------------------'

  list = [1,2,'wjh',['a','b',6]]
  puts list
  puts '-----------------------------------'
  puts list[1..5]

end