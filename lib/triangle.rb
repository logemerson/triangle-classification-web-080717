class Triangle

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
    @sides = [a, b, c]
  end

  def sides
    @sides
  end

  def valid?
    if self.sides.each { |s| s > 0 } && (@a + @b)  > @c && (@a + @c)  > @b && (@b + @c)  > @a
      true
    else
      false
    end
  end

  def kind
    if !self.valid?
      raise TriangleError
    else
      if @a == @b && @b == @c
        :equilateral
      elsif @a == @b || @a == @c || @b == @c
        :isosceles
      else
        :scalene
      end
    end
  end

end

class TriangleError < StandardError
  def message
    "Your triangle is invalid."
  end
end
