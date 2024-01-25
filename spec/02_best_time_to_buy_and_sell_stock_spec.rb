class BestTimeBuyAndSell

  def max_profit(prices)
    profit = 0
    min_price = prices[0]
    prices.each do |price|
      price
      if price < min_price
        min_price = price
      else
        profit = [(price - min_price), profit].max
      end
    end
    profit
  end
end

RSpec.describe BestTimeBuyAndSell, "#max_profit" do
  before(:each) do
    @best_time_buy_and_sell = BestTimeBuyAndSell.new
  end

  def given(prices)
    @result = @best_time_buy_and_sell.max_profit(prices)
  end

  def should_return(expected)
    expect(@result).to eq(expected)
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