class Bob
  def self.hey(message)
    m = message.strip

    case
    when m.empty?
      'Fine. Be that way!'
    when !m[/[a-z]/]
      'Whoa, chill out!'
    when m.end_with?('?')
      'Sure.'
    else
      'Whatever.'
    end
  end
end
