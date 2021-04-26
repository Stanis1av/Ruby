=begin
Объектно-ориентированное программирование — это методология
программирования(1), в которой все важные вещи представлены объектами,
каждый из которых является экземпляром определенного класса, а классы
образуют иерархию наследования.

(1) - Методология разработки программного обеспечения — совокупность методов,
применяемых на различных стадиях жизненного цикла программного обеспечения и
имеющих общий философский подход.

https://ru.wikipedia.org/wiki/%D0%9C%D0%B5%D1%82%D0%BE%D0%B4%D0%BE%D0%BB%D0
%BE%D0%B3%D0%B8%D1%8F_%D0%BF%D1%80%D0%BE%D0%B3%D1%80%D0%B0%D0%BC%D0%BC%D0%B
8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D1%8F.
=end

=begin
  Итак, класс — это своеобразный «чертёж», по которому строятся объекты
  — экземпляры этого класса.
=end

qq = '=' * 70

class Cat
  attr_accessor :name_cat, :gender, :age, :weight, :color

  def initialize(name_cat, gender, age, weight, color)
    @name_cat = name_cat
    @gender = gender
    @age = age
    @weight = weight
    @color = color
  end

  def run
    'run'
  end
  def eat
    'eat'
  end
  def breath
    'breath'
  end
  def i_sleep
    'sleep'
  end
  def meow
    'meow'
  end

  def output_information
    <<-aaa
I'm a cat, my name is '#{@name_cat}'.
My gender is: '#{@gender}', my age is '#{@age}', me weight is '#{@weight}'
ans my color is: '#{@color}'
    aaa
  end
end

cat_1 = Cat.new('Pushistik', 'male', 3, 5.2, 'Gray')
cat_2 = Cat.new('Murka', 'female', 1, 3, 'White')

puts cat_1.output_information
puts "I can #{cat_1.run}, #{cat_1.eat}, #{cat_1.breath}, #{cat_1.i_sleep}, #{cat_1.meow}."
p qq
cat_2.output_information

=begin
  Выше я создал класс и два экземпляра (объекта) этого класса.
  В приведённом выше коде класс является - чертежом, а объекты - деталями
  изготовленными по этому чертежу
=end
