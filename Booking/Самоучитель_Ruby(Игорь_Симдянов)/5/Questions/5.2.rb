class Distance
  def set_point_one(xa, ya)
    @xa = xa
    @ya = ya
  end

  def set_point_two(xb, yb)
    @xb = xb
    @yb = yb
  end

  def distance_calculation
    ab = Math.sqrt((@xb - @xa)**2 + (@yb - @ya)**2)
  end

end

distance = Distance.new

distance.set_point_one(3, 6)
distance.set_point_two(-1, 5)

p distance.distance_calculation
