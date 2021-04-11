# Синтаксические конструкторы и предопределённые классы

#   В руби нет типов, в Ruby всё объекты. Поведение всех объектов задаётся
# классами. У объектов может быть толко один класс, узнать который можно с
# помощью метода "class"

qq = '=' * 70
int = 2700
flt = 3.14
str = 'Loren ipsumdolor'

puts int.class #=> Integer
puts flt.class #=> Float
puts str.class #=> String

puts str.class.class #=> Class

pp qq

#   Можно создавать свои собственные классы при помощи ключевого
# слова "class". Существуют множество готовых классов которые
# Ruby предостовляет программисту. Например, класс Object,
# получить объект которого можно при помощи метода new

o = Object.new
# метод "object_id" вывявляет идентификаторт объекта
puts o.object_id #=> 60

pp qq

#   Так как в ruby всё объекты, то часть нужных нам объектов можно создавать,
# более простым способом, например для создания объекта строки (который имеет свой
# собственный класс String), можно воспользоваться кавычками:

str = 'This is a string'
puts str

puts str.class
puts str.object_id

pp qq

# Также можно было бы воспользоваться методом new класса String:
# Но этот способ является избыточным в отношении строк, и так никто не
# поступает
str = String.new('Hello, world!')
puts str

# Подобные специальные (укороченные) способы создании объектов класса,
# как в случае выше, (использование кавычек для создания объекта строки,)
# называют - "Синтаксическим конструктором"

# Существуют несколько предопределённых классов которые предоставляют
# синтаксические конструторы

=begin
|------------|---------------------------------|-------------------------|
|Класс       |Синтаксический конструктор       | Описание                |
|------------|---------------------------------|-------------------------|
|String      |'Hello,world!'                   |Строки                   |
|Symbol      |:black                           |Символы                  |
|Integer     |120                              |Целые числа              |
|Float       |3.14                             |Числа с плавающей точкой |
|Range       |1..15                            |Диапазон                 |
|Array       |[1, 2, 3, 4]                     |Массив                   |
|Hash        |{ name: 'Sam', age: 18 }         |Хэш                      |
|Proc        |-> (a, b) {a + b}                |Прок-объекты             |
|Regexp      |//                               |Регулярное выражение     |
|NilClass    |nil                              |Неопределённое значение  |
|TrueClass   |true                             |Логическая истина        |
|FalseClass  |false                            |Логическая ложь          |
|------------|---------------------------------|-------------------------|
=end



