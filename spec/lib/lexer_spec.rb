require 'rspec'
require 'lexer'

describe Lexer do
  it 'will return an empty list for an empty string' do
    expect(subject.tokenize "").to eq []
  end

  it 'Will lex an empty expression' do
    expect(subject.tokenize '( )').to eq ['(', ')']
    expect(subject.tokenize '()').to eq ['(', ')']
  end

  it 'Will lex an empty expression' do
    expect(subject.tokenize '(noargs)').to eq ['(', 'noargs', ')']
  end

  it 'Will ignore whitespace ' do
    expect(subject.tokenize "\n\t\n  \n (          noargs \r\n\t)").to eq ['(', 'noargs', ')']
  end

  it 'Will seperate subsequent braces' do
    expect(subject.tokenize '((()))').to eq ['(', '(', '(', ')', ')', ')']
  end

  it 'Will tokenize strings properly' do
    expect(subject.tokenize '(println "My String")').to eq ['(', 'println', '"', 'My', 'String', '"', ')']
    expect(subject.tokenize "(println 'My String')").to eq ['(', 'println', "'", 'My', 'String', "'", ')']
  end

  it 'Will convert an integer string to an int type' do
    expect(subject.tokenize "42").to eq [42]
  end

  it 'Will convert a float string to a float type' do
    expect(subject.tokenize "42.5").to eq [42.5]
  end
end
