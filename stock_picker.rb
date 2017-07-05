# Stock picker takes an array of stock prices (one per day) and
# returns a pair of days representing the best day to buy and sells
# Days start at 0

def stock_picker(arr)
	buy_day = 0
	sell_day = 0
	old_profit = -999

	arr.each_with_index do |buy_price, buy_index|
		arr.each_with_index do |sell_price, sell_index|
			if sell_index <= buy_index
				next
			end
			new_profit = sell_price - buy_price
			if new_profit > old_profit
				old_profit = new_profit
				buy_day = buy_index
				sell_day = sell_index
			end
		end
	end
	return [buy_day,sell_day]
end

a = stock_picker([17,3,6,9,15,8,6,1,10])
print a