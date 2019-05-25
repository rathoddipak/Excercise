class Squares
  attr_accessor :number
  def initialize(number)
    @number = number
  end

  def square_of_sum
    (1..number).to_a.reduce(:+)**2
  end

  def sum_of_squares
    (1..number).to_a.map { |x| x**2 }.reduce(:+)
  end

  def difference
    square_of_sum - sum_of_squares
  end
end