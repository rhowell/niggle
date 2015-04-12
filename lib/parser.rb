class Parser
  def initialize tokens
    @tokens = tokens
  end

  def parse
    tok = @tokens.first
    case tok
    when '['
    when '('
    when ';'
    when '{'
    when '#{'
    else
      fail "Unexpected token: #{tok}"
    end
  end

  def parseList
    parsed = [:list]
  end

  def parseVector
    parsed = [:vector]
  end

  def parseSet
    parsed = [:set]
  end

  def parseHash
    parsed = [:hash]
  end

  def parseString
    parsed = [:string]
  end

  def parseComment
  end
end
