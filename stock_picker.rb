# frozen_string_literal: true

def stock_picker(prices_list)
  best_days = Array.new(2, 0)
  prices_list.each_with_index do |buy_price, buy_index|
    prices_list.each_with_index do |sell_price, sell_index|
      sell_index <= buy_index && next # skips prior days

      if sell_price - buy_price > prices_list[best_days[1]] - prices_list[best_days[0]] # loop price vs best price
        best_days = [buy_index, sell_index]
      end
    end
  end
  best_days
end

p stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
