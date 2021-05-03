# bundle exec rspec --version => This command checks the rspec version
# Run the following command: bundle exec rspec --init => For initialize RSpec
class Sum_int
  def initialize(x, y)
    @x = x
    @y = y
  end

  def result
    @x + @y
  end
end

ex1 = Sum_int.new(3, 5)
puts ex1.result
