class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    # @a, @b, @c > 0, 0, 0
    if (@a == @b && @a == @c) && (@b == @a && @b == @c) && (@c == @a && @c == @b)
      :equilateral
    elsif (@a != @b) && (@b == @c) || (@a == @c) && (@c != @b) || (@a == @b) && (@b != @c)
      :isosceles
    elsif (@a != @b) && (@b != @c)
      :scalene
    end
  end

  class TriangleError < StandardError
   # triangle error code
  end
end
