class ContainsDuplicate

  attr_accessor :nums

  def contains_duplicate
    hash = {}
    nums.each do |num|
      return true if hash[num]
      hash[num] = true
    end
    false
  end
end

RSpec.describe ContainsDuplicate, "#contains_duplicate" do
  before(:each) do
    @contains_duplicate = ContainsDuplicate.new
  end

  def given(nums)
    @contains_duplicate.nums = nums
  end

  def should_return(expected)
    expect(@contains_duplicate.contains_duplicate).to eq(expected)
  end

  it do
    given([1,2,3,1])
    should_return(true)
  end

  it do
    given([1,2,3,4])
    should_return(false)
  end

  it do
    given([1,1,1,3,3,4,3,2,4,2])
    should_return(true)
  end
end