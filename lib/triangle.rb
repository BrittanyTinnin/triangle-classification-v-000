class Triangle
  attr_reader :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    true_triangle
    if a == b && b == c
      :equilateral
    elsif  a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end

  def true_triangle
    a_triangle = [(a+b>c), (a+c>b), (b+c>a)]
    [a,b,c].each {|s| a_triangle unless s <= 0}
    raise TriangleError if a_triangle == false
  end


  class TriangleError < StandardError

  end
end
