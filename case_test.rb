class CaseTest

  puts '-------case---------'
  case x
    when 1..2
      puts '1..2'
    when 4..9,0
      puts '4..9,0'
    else
      puts 'other'
  end

end