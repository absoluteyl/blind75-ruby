class ContainsDuplicate

  def contains_duplicate(nums)
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
    @result = @contains_duplicate.contains_duplicate(nums)
  end

  def should_return(expected)
    expect(@result).to eq(expected)
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