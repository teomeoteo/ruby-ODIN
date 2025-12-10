days = [9, 7, 12, 8, 19, 20, 16, 17, 1, 19, 8, 12, 11]
days1 = [10, 11, 12, 2, 19, 20, 8, 17, 54, 55, 56, 4, 11]
days2 = [1, 7, 12, 19, 9, 20, 23, 17, 12, 19, 8, 13, 11]
days3 = [4, 7, 3, 9, 19, 20, 16, 17, 20, 19, 8, 12, 11]
days4 = [10, 9, 10, 8, 11, 20, 16, 17, 21, 19, 8, 12, 11]
days5 = [10, 9, 10, 8, 11, 20, 16, 17, 21, 21, 21, 12, 11]

def stock_pick(arr)
	buy_day = arr[0]
	pair = [nil, nil]
	max_diff = 0
	buy_day_index = nil

	arr.each_with_index do |element, index|
		if (index == 0)
			next buy_day_index = index
		end

		if (element < buy_day)
			buy_day = element
			buy_day_index = index
		end

		if ((element - buy_day) > max_diff)
			max_diff = element - buy_day
			pair = [buy_day_index, index]
		end
	end

	pair
end

p stock_pick(days)
p stock_pick(days1)
p stock_pick(days2)
p stock_pick(days3)
p stock_pick(days4)
p stock_pick(days5)
