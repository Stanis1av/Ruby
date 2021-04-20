puts 'Ввиедите факториал'
factorial = gets.strip.to_i
answer = 1

(1..factorial).to_a.map {|v| answer = answer * v}
p answer
