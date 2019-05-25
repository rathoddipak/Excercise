class Transpose
  def self.transpose(input)
    return input if input.empty?

    lines = input.split("\n")
    max_width = lines.max_by(&:size).size
    lines.map { |line| line << 0.chr * (max_width - line.size) }
    lines.map(&:chars).transpose.map do |i|
      i.join.sub(/#{0.chr}*\z/, '').gsub(0.chr, ' ')
    end.join("\n")
  end
end