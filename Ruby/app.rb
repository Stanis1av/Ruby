require 'ruby-prof'
require "benchmark"

# Profile the code
result = RubyProf.profile do

def merge(a1, a2)
  i = 0
  while a2.any?
    if a2.first < a1[i]
      a1.insert(i, a2.shift)
    elsif a1[i+1].nil?
      a1.insert(i+1, a2.shift)
    elsif a2.first > a1[i] && a2.first < a1[i+1]
      a1.insert(i+1, a2.shift)
      i += 1
    else
      i += 1
    end
  end

  a1
  puts(Benchmark.measure { sleep 0.5 })

end
qq = '=' * 70
a1 = [10,11,13, 0, 223]
a2 = [0,2,12312,6,45]
p a1
p a2

p merge(a1, a2)
end

# Print a flat profile to text
printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT)

puts qq

p (a1 << a2).flatten.sort
