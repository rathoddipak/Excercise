class Proverb
  attr_accessor :proverb
  def initialize(*string, qualifier: nil)
    @proverb = string
    @extra = qualifier
  end

  def to_s
    (common_proverb << last_proverb).join("\n")
    # @proverb.each_cons(2).all? { |p| common_proverb(p) }
  end

  private

  def common_proverb
    @proverb.each_cons(2).map do |first, second|
      "For want of a #{first} the #{second} was lost."
    end
  end

  def last_proverb
    qualified_first_word = [@extra, @proverb.first].compact.join(' ')
    "And all for the want of a #{qualified_first_word}."
  end
end
