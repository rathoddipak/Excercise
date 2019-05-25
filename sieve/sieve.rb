class Sieve
  def initialize limit
    @nums = [*(2..limit)]
  end

  def primes
    @nums.each do |n|
      @nums.delete_if {|i| i.modulo(n).zero? and i != n}
    end
  end
end

c= Sieve.new(50)