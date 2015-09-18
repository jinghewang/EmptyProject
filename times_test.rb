class TimesTest

  print "\n-----times-----\n"
  3.times{print 'hi'}

  print "\n-----upto-----\n"
  1.upto(9){
    |i| print i if i<7
  }

  print "\n-----downto-----\n"
  9.downto(1){|i| print i if i >1}

  print "\n-----each-----\n"
  (1..9).each{|i| print i}

  print "\n-----step-----\n"
  0.step(11,3){|i| print i}

end