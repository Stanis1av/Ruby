def convert1(value)
  "#{value} килограмм == #{value * 1000} граммов."
end

puts convert1(50)

def convert2(value, factor)
  value * factor
end

puts convert2(50, 1024)
