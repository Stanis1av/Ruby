class Posneg
  def initialize(x)
    @x = x
  end
  def posneg
    if !@x.instance_of?(Integer) then 'Это не число'; exit end

    if @x.negative?
      'Число отрицательное'
    elsif @x.positive?
      'Число положительное'
    end
  end
end
ex1 = Posneg.new(5)
ex1.posneg
