def power(x, px)
  answer = x
  1.upto(px) do |i|
      if i == px
        puts "Result: #{answer}"
        exit
      end
      puts answer = answer * x

  end
end

power(3, 3)
