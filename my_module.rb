module MyModule

  APPID = 'hlt'

  def self.talk(name)
    puts "hello: #{name}"
  end

  def self.sqrt(num)
    return Math.sqrt(num)+ 0.1
  end

  def sqrt(num, rx=1, e=1e-10)
      num*=1.0
      (num - rx*rx).abs <e ?  rx : sqrt(num, (num/rx + rx)/2, e)
  end

end