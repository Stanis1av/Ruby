# Обработка подстрок
str = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.'
# В квадратных скобках можно указывать 2 параметра через запятую
# В первом индекс символа с которого будет начинаться выборка, а во втором
# количество символов (длину)
p str[0, 5] #=> 'Lorem'
p str[6..11] #=> 'ipsum'
p str[-5..-2] #=> 'elit'

str1 = 'Hello, World!'
str1[7..-2] = 'Ruby'
p str1 #=> 'Hello, Ruby!'

# По мимо квадртаных скобок, существуют след-ие методы для удаление
# подстрок из стоки
s = 'Hello, World!'
p s.sub('l', '*') #=> "He*lo, World!"
p s.gsub('l', '-') #=> "He--o, Wor-d!"
