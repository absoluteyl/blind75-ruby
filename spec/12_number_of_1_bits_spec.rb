class Number1Bits

  attr_accessor :n

  def hammimg_weight

  end
end

RSpec.describe Number1Bits, "#hammimg_weight" do
  before(:each) do
    @number_1_bits = Number1Bits.new
  end

  def given(n)
    @number_1_bits.n = n
  end

  def should_return(expected)
    expect(@number_1_bits.hammimg_weight).to eq(expected)
  end

  it do
    given(00000000000000000000000000001011)
    should_return(3)
  end

  it do
    given(00000000000000000000000010000000)
    should_return(1)
  end

  it do
    given(11111111111111111111111111111101)
    should_return(31)
  end
end