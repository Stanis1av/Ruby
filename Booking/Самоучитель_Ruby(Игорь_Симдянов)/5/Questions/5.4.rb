class Car
  def set_type_car(type_car)
    @type_car = type_car
  end

  def set_weight(weight)
    @weight = weight
  end

  def set_engine_power(engine_power)
    @engine_power = engine_power
  end

  def set_car_brand(car_brand)
    @car_brand = car_brand
  end

  def output
    "Брэнд автомобиля: #{@car_brand}.
    Тип автомобиля: #{@type_car}.
    Вес автомобиля: #{@weight}.
    Мощность двигателя: #{@engine_power}."
  end
end

car1 = Car.new
car1.set_type_car('Легковая')
car1.set_weight(2)
car1.set_engine_power(220)
car1.set_car_brand('BMW')

car2 = Car.new
car2.set_type_car('Кроссовер')
car2.set_weight(3)
car2.set_engine_power(310)
car2.set_car_brand('Lexus')

car3 = Car.new
car3.set_type_car('Грузовая')
car3.set_weight(7)
car3.set_engine_power(470)
car3.set_car_brand('Mercedes')

qq = '=' * 70

puts car1.output
p qq

puts car2.output
p qq

puts car3.output
p qq
