require "pry-byebug"

def stock_picker(arr)
	buy_sell = [nil, nil]
	max_diff = 0
	buy_min = nil

	arr.each_with_index do |price, index|
		if (index == 0)
			buy_min = arr[index]
			next
		end

		current_diff = buy_min - price

		if (current_diff < max_diff)
			max_diff = current_diff
			buy_sell = [arr.index(buy_min), index]
		end

		if (price < buy_min)
			buy_min = price
		end
	end

	buy_sell
end

p stock_picker([2, 3, 1, 4])
p stock_picker([2, 3, 1, 4, 4, 1, 15, 20, 54, 1, 32, 2, 10, 54])
p stock_picker([1, 3, 1, 4])
p stock_picker([5, 3, 2, 1])
p stock_picker([10, 2, 8, 15])
