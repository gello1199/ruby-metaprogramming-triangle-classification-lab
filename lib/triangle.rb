require 'pry'

class Triangle
  attr_accessor :length_1, :length_2, :length_3

  def initialize(length_1, length_2, length_3)
    @length_1 = length_1
    @length_2 = length_2
    @length_3 = length_3
  end

  def kind
    if @length_1 <= 0 || @length_2 <= 0 || @length_3 <= 0
      raise TriangleError
    end

    if @length_1 >= (@length_2 + @length_3) || @length_2 >= (@length_1 + @length_3) || @length_3 >= (@length_1 + @length_2)
      raise TriangleError
    end

    if @length_1 == @length_2 && @length_2 == @length_3 && @length_3 == @length_1
      :equilateral
    elsif @length_1 == @length_2 || @length_2 == length_3 || @length_1 == @length_3
      :isosceles
    else
      :scalene
    end

  end

  class TriangleError < StandardError
  end

#   new = Triangle.new(10, 20, 30)
# binding.pry
end
