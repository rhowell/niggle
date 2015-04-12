

# Breaks a string into it's logical tokens
# It will also convert tokens into the correct types
class Lexer
  def tokenize str
    tokens = breakup str

    tokens.map { |t| typify t }
  end

  def breakup str
    # Lefties
    str.gsub!(/([\({\["'])/, '\1 ')
    # Righties
    str.gsub!(/([\)}\]"'])/, ' \1')

    str.split
  end

  def typify tok
    if tok[/^\d+$/]
      tok.to_i
    elsif tok[/^[\d.]+$/]
      tok.to_f
    else
      tok
    end
  end
end
