# Задача: округлить число ПИ до двух знаков псоле запятой
pi = Math::PI
puts "Число PI = #{pi}"
puts pi.class

puts "1. #{pi.floor(2)}"

puts "2. #{pi.round(2)}"

puts "3. #{pi.to_s[0..3].to_f}"

puts "4. #{pi.to_s.gsub(/(\d).(\d)/, '\1.\2').to_f}"

