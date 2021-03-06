# Синтаксические конструторы '%q' and '%Q'
# По мимо кавычек, для создания строки можно использовать спец-ые
# последовательности '%q' and '%Q'

puts %q(Hello, World!) #=> Hello, World!

name = 'Ruby'
puts %Q(Hello, #{name}!) #=> Hello, Ruby!

# После последовательности можно указать строку заключенные в ограничители
# Можно использовать: [], {}, (). Принято - ()

# '%q' - аналог одиночных кавычек, '%Q' - двойных

# На практике '%q' и '%Q' применяют достаточно редко, вместо них
# предпочтительнее использовать двойные и одинарные кавычки
