class Triangle
  # write code here

  attr_accessor :side_one, :side_two, :side_three

  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind
    # array = [side_one, side_two, side_three]
    if side_one <= 0 || side_two <= 0 || side_three <=0
      begin
        raise TriangleError
        # rescue TriangleError
      end
    elsif side_one == side_two && side_two == side_three
      :equilateral
    elsif side_one == side_two || side_one == side_three || side_two == side_three
      :isosceles
    elsif side_one != side_two && side_two != side_three && side_one != side_three
      :scalene
    elsif (side_one + side_two) <= side_three || (side_one + side_three) <= side_two
      begin
        raise TriangleError
        # rescue TriangleError
      end
    end
  end

  class TriangleError < StandardError

  end
end

