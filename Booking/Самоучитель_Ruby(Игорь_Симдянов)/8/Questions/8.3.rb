def max_value(arr)
  arr.each do |i|
    if i.instance_of?(Integer)
      puts arr.max
      exit
    else
      puts "Error, the value: #{i}, is not integer."
      exit
    end
  end

end

arr = [29, 12, 1]
max_value(arr)

