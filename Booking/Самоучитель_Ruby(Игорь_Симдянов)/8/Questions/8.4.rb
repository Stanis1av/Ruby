def check(x)
  if x.instance_of?(Integer)
    puts "#{x} - it is a integer"
  elsif x.instance_of?(Float)
    puts "#{x} - it is a float"
  elsif x.instance_of?(String)
    puts "#{x} - it is a string"
  else
    puts "value undefined"
  end
end

check('Ruby')
