class Triangle
  # write code here
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if [a, b, c].any? {|x| x <= 0}
      raise TriangleError
    end

    sides = [a, b, c].sort
      
    unless sides[0] + sides[1] > sides[2]
      raise TriangleError
    end

    if a == b && b == c
      :equilateral
    elsif a == b || b == c || c == a 
      :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end