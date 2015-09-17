class ForTest

  list = ['wjh', 'lvkui', 'wangjingzhi']


  puts '-------for in range------------------'
  for x in 1..6
    puts x
  end

  puts '-------for in list------------------'
  for x in list
    puts x
  end

  puts '-------for unless---------'
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

  puts '-------for next------------------'
  for x in 1..5
      if x == 2 then
        next
      end
      printf "x:%s\n", x
  end

  exit;

  puts '-------for next------------------'
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
  n = 0
  begin
    puts 'Trying to do something'
    raise 'oops'
  rescue => ex
    puts ex
    n += 1
    retry if n < 3
  end
  puts "Ok, I give up"


  puts "------演示retry 2----"
  x = 2
  begin
    printf "current x:%d\n",x
    if x < 3 then
      raise  'x<3 not used'
    end
  rescue => ex
    puts ex
    (x += 3;retry) if x < 3
  end


end