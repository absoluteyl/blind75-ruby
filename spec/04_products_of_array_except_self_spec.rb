class ProductExceptSelf

  attr_accessor :nums

  def product_except_self

  end
end

RSpec.describe ProductExceptSelf, "#product_except_self" do
  before(:each) do
    @product_except_self = ProductExceptSelf.new
  end

  def given(nums)
    @product_except_self.nums = nums
  end

  def should_return(expected)
    expect(@product_except_self.product_except_self).to eq(expected)
  end

  it do
    given([1,2,3,4])
    should_return([24,12,8,6])
  end

  it do
    given([-1,1,0,-3,3])
    should_return([0,0,9,0,0])
  end
end