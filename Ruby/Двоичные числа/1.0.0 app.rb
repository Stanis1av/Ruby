# def convert_to_binary(n)
#   ch = n / 2
#   ost = n % 2

#   result = []
#   result << ost

#   loop do |v|
#     ost = ch % 2
#     ch = ch / 2

#     result << ost
#     break if ch == 0
#   end
#   answer = result.reverse.join.to_i
#   puts answer
# end

# convert_to_binary(6)

def convert_to_binary(integer)
  binary = []
  while integer > 0
    binary << integer % 2
    integer /= 2
  end
  binary.reverse.join
end

# p convert_to_binary(6)

def convert_to_binary_recursive(integer)
  if integer <= 1
    integer.to_s
  else
    convert_to_binary_recursive(integer / 2) + (integer % 2).to_s
  end
end
# p convert_to_binary_recursive(6)

n = 2**20
%i(convert_to_binary convert_to_binary_recursive).each do |method|
  failed = []
  t1 = Time.now
  (0..n).each do |i|
    binary  = self.send(method, i)
    correct = (binary == i.to_s(2))
    failed << i if !correct
  end
  t2 = Time.now
  puts "\n#{method}"
  puts " - CORRECT: #{failed.empty?}"
  puts " - FAILED: #{failed}" if failed.any?
  puts " - #{t2-t1}sec"
end
