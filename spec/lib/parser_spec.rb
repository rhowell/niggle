require 'rspec'
require 'parser'

describe Parser do
  it "Will parse a simple list" do
    subject = Parser.new(["(", "print", ")"])
    expect(subject.parse).to eq([:list, "print"])
  end
end
