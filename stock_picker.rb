# frozen_string_literal: true

def stock_picker(prices)
  buy_idx = 0

  max_profit = 0
  result = [0, 0]

  # Use a sliding window
  prices.each_with_index do |price, idx|
    # Skip first iteration, start the window at [0, 1]
    next if idx.zero?

    # Update if a lower buying price is found
    if price < prices[buy_idx]
      buy_idx = idx
    else
      profit = price - prices[buy_idx]

      # Update maximum profit along with the buying and selling days
      if profit > max_profit
        max_profit = profit
        result = [buy_idx, idx]
      end
    end
  end

  result
end

prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

p stock_picker(prices)
