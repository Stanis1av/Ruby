a = { x: 3, y:  7}
b = { x: -1, y:  5}

value = (b[:x] - a[:x])**2 + (b[:y] - a[:y])**2
ab = Math.sqrt(value)

p ab
