prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]
max_profit = 0
buy_day = 0
sell_day = 0

def day_trader(prices)
  prices.each_with_index do |buy_price, buy_index|
    prices[buy_index+1..-1].each_with_index do |sell_price, sell_index|
      profit = sell_price - buy_price
      if profit > max_profit
        max_profit = profit
        buy_day = buy_index
        sell_day = sell_index + buy_index + 1
      end
    end
  end

  return [buy_day, sell_day]
end

result = day_trader(prices)
puts "Acheter le jour #{result[0]+1} et vendre le jour #{result[1]+1} pour un bénéfice de #{prices[result[1]] - prices[result[0]]}$."