# Exercism practice
class Triangle
  attr_accessor :size, :side

  def initialize(size)
    @size = size
    @side = 0
  end

  def equilateral?
    return false if check_side(side)
    equal_size?
  end

  def isosceles?
    return false if check_side(side + 1)
    equal_size?
    size.uniq.count <= 2
  end

  def scalene?
    return false if equal_size? || size.uniq.count == 2
    inequal?
  end

  def equal_size?
    size.uniq.count == 1
  end

  def check_side(size)
    @size.include?(size)
  end

  def inequal?
    size.permutation(3).all? { |(a,b,c)| a <= b + c }
  end
end
