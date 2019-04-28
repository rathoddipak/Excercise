class IsbnVerifier

  class << self
    def valid?(isbn)
      char = isbn.chars.select { |c| isbn_digit?(c) }
      (char.reverse.each_with_index.sum { |digit, i| convert_digit(digit, i == 0) * (i + 1) } % 11).zero? unless char.size != 10
    end

    def isbn_digit?(char)
      char.match?(/[0-9X]/)
    end

    def convert_digit(digit, last)
      last && digit == 'X' ? 10 : digit.to_i
    end
  end
end