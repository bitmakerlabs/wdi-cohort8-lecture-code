class Point
  # defines setter methods
  # attr_writer :x, :y

  # defines getter methods
  # attr_reader :x, :y

  # defines both getter and setter methods
  attr_accessor :x, :y

  def initialize(x, y)
    @x = x
    @y = y
  end

  def x
  end

  def to_s
    "(#{@x}, #{@y})"
  end

  def +(another_point)
    x = @x + another_point.x
    y = @y + another_point.y
    Point.new(x, y)
  end
end

class Line
  attr_accessor :start_point, :end_point

  def initialize(start_point, end_point)
    @start_point  = start_point
    @end_point    = end_point
  end

  def to_s
    "#{@start_point} == #{@end_point}"
  end
end

class Vector < Line
  attr_accessor :direction

  def initialize(start_point, end_point, direction)
    super(start_point, end_point)
    @direction = direction
  end

  def to_s
    super + "-> #{@direction}"
  end

  def change_direction(new_direction)
    # calculation
  end
end

p = Point.new(1, 3)
puts p

# p.x=(5)
p.x = 5
p.y = 7

puts p.x
puts p.y

p1 = Point.new(4,2)
p2 = Point.new(8,10)

# p3 = p1.+(p2)
p3 = p1 + p2
p4 = p3 + p3
# p4 = Point.new(p1.x + p2.x, p1.y + p2.y)
puts p3
puts p4

line = Line.new(p1, p2)
puts line

vector = Vector.new(p1, p2)
puts vector

# local variables - available only inside a method
# instance variables: start with an @ - available throughout an object (instance)
# class variables: start with an @@ - available at the class level
