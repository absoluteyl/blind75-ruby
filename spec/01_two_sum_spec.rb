class TwoSum

  attr_accessor :nums, :target

  def solution
    last_i = nums.length - 1
    for i in 0..last_i
        a = nums[i]
        for j in 0..last_i
            next if i == j
            if nums[j] == target - a
                return [i, j]
            end
        end
    end
  end
end

RSpec.describe TwoSum, "#solution" do
  before(:each) do
    @two_sum = TwoSum.new
  end

  def given(nums, target)
    @two_sum.nums = nums
    @two_sum.target = target
  end

  def should_return(expected)
    expect(@two_sum.solution).to eq(expected)
  end

  it do
    given([2,7,11,15], 9)
    should_return([0,1])
  end

  it do
    given([3,2,4], 6)
    should_return([1,2])
  end

  it do
    given([3,3], 6)
    should_return([0,1])
  end

  it do
    given([-3, 4, 3, 90], 0)
    should_return([0,2])
  end

  it do
    given([-1,-2,-3,-4,-5], -8)
    should_return([2,4])
  end
end