class BestTimeBuyAndSell

  attr_accessor :prices

  def max_profix
    profit = 0
    prices.each_with_index do |price, idx|

    end
    profit
  end
end

RSpec.describe BestTimeBuyAndSell, "#max_profix" do
  before(:each) do
    @best_time_buy_and_sell = BestTimeBuyAndSell.new
  end

  def given(prices)
    @best_time_buy_and_sell.prices = prices
  end

  def should_return(expected)
    expect(@best_time_buy_and_sell.max_profix).to eq(expected)
  end

  it do
    given([7,1,5,3,6,4])
    should_return(5)
  end

  it do
    given([7,6,4,3,1])
    should_return(0)
  end
end