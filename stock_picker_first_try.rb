require "pry-byebug"

def stock_picker(arr)
	i = 0
	max_index = arr.length - 1
	comp_array = []
	while i < max_index do
		comp_array << [arr[i], arr.last(arr.length - (i + 1))]
		# binding.pry
		i += 1
	end
	# binding.pry
	
	diff_array = comp_array.map.with_index do |element, index|
		diff_max = element[0] - element[1][0]
		# binding.pry
		element[1].each do |diffee|

			current_diff = element[0] - diffee

			if (current_diff < diff_max)
				diff_max = current_diff
			else
				next
			end

		end
		diff_max
	end
	# binding.pry	
	diff_max_index = diff_array.index(diff_array.min)
	buy_day = diff_max_index
	sell_day_value = arr.last(arr.length - diff_max_index).max
	sell_days_indexes = arr.each_with_index.select do |v, i|
		v == sell_day_value && i > buy_day
	end.map { |v, i| i }
	#binding.pry

	if (!(sell_days_indexes[0] == nil))
		sell_day = sell_days_indexes[0]
		puts "It's best to buy on day: #{buy_day}, and sell on day #{sell_day} (starting from 0)"
	else
		puts "Profit cannot be made"
		buy_day = nil
		sell_day = nil
	end
	
	[buy_day, sell_day]
end

# p stock_picker(stock_days_values)

stock_days_values = [4, 16, 7, 9, 11, 1, 4, 8, 7, 2, 4, 14, 3]
stock_picker(stock_days_values)
stock_picker([2, 3, 1, 7])
stock_picker([9, 8, 5, 3, 11, 2, 8, 15, 1, 9])
stock_picker([22, 54, 21, 15, 23, 21, 54, 10])
stock_picker([10, 9, 8, 7, 6, 5, 4, 3, 2, 1])

p stock_picker([2, 1])
