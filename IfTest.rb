class IfTest



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