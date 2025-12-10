arr = [1, 5, 11, 4, 8, 20, 18, 2, 9]
arr2 = [16, 7, 21, 2, 0, 10, 11, 5, 1]
arr3 = [9, 2, 21, 2, 3, 22, 11, 0, 2]
arr4 = [2, 2, 11, 2, 4, 24, 14, 4, 9]
arr5 = [8, 7, 6, 5, 4, 3, 2, 1, 0]


def bubble_sort(arr)
	loop do
		swap = false
		(arr.length - 1).times do |i|
			if (arr[i] > arr[i + 1])
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swap = true
			end
		end
	break if swap == false
	end
	arr
end

p bubble_sort(arr)
p bubble_sort(arr2)
p bubble_sort(arr3)
p bubble_sort(arr4)
p bubble_sort(arr5)
