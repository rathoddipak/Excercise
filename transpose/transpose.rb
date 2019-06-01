class Transpose

  class << self
    def transpose(input)
      return input if input.empty?

      lines = input.split("\n")
      lines.map { |line| line << 0.chr * (max_width(lines) - line.size) }
      lines.map(&:chars).transpose.map do |i|
        print_string(i)
      end.join("\n")
    end

    def max_width(lines)
      lines.max_by(&:size).size
    end

    def print_string(string)
      string.join.sub(/#{0.chr}*\z/, '').gsub(0.chr, ' ')
    end
  end

end
