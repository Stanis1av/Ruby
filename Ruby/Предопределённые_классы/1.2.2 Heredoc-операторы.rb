# Heredoc-оператор
# Используется для создания строк
# Чтобы применить нужно начать с последовательности <<,
# после которой указывается уникальная последовательность например
# test. Как только эта последовательность встречается повторно
# то строка завершается
qq = '=' * 70
str = <<test
    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  In vel ornare turpis. Vestibulum venenatis ex semper
  ultricies interdum. Phasellus ac nisl enim. Nulla facilisi.
  Nulla at mollis est. Maecenas condimentum at nibh congue
  iaculis. Morbi finibus fermentum nulla vitae fringilla.
test

puts str
p qq

# heredoc-operator позволяяет сохранить форматирование

# Заверщающаяя последовательность heredoc-operator должна
# распологаться в начале строки, иначе она будет включена в
# последовательность и руби-интерпретатор не сможет разобрать код
# программы. Для того, чтобы избежать этого нужно после '<<' добавить '-'

str1 = <<-test
    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
  In vel ornare turpis. Vestibulum venenatis ex semper
  ultricies interdum.
         test
# ^ ^ ^
puts str1
p qq

# Часто пробелы(отступы) в начале строк - резултат форматирвоания
# heredoc-оператора. При необхлдимости избавиться от них
# используйте '<<~'
str2 = <<~test
        Lorem ipsum dolor sit amet, consectetur adipiscing elit.
      In vel ornare turpis. Vestibulum venenatis ex semper
      ultricies interdum.
         test
puts str2
p qq

# heredoc-оператор по умолчанию допускает интерполяцию
str3 = <<~test
          2 + 3 = #{2 + 3}
          test
puts str3
p qq

# Если интеполяция нам не нужна, заключите последовательность test в кавычки
str4 = <<~'test'
        2 + 3 = #{2 + 3}
        test
puts str4
p qq

