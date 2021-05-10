# Неограниченное колиество параметров
puts 'Hello', 'ruby', 'world'

# def name_method(*params) - '*'
def multi_params(*params)
  params
end
p multi_params(2, 5, 1, 7)

puts '=' * 70

def multi_params2(x, y, *params)
  puts x
  puts y
  p params
end

multi_params2(4, 7, 'Lorem', 'ipsum', 'dolor', 'sit', 'amet')

puts '=' * 70

def array_params(x, y, z)
  puts x
  puts y
  puts z
end
point = [6, 1, -9]
array_params(*point)
