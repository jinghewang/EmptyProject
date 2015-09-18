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

  puts '-------for break------------------'
  for x in 1..5
      if x == 4 then
        break
      end
      printf "x:%s\n", x
  end

  puts "--------for redo-----------"
  c='a'
  for i in 1..4
    if i == 2 and c =='a'
      c = 'b'
      print "redo(",'i:',i,' c:',c,')'
      redo
    end
    print i,c,"\n"
  end


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