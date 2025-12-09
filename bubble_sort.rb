arr = [5, 5, 8, 2, 5, 4, 2, 9, 10, 1, 4, 2, 8, 6]
arr1 = [1, 3, 2, 7, 5, 3, 11, 8, 2, 1, 4, 5]
arr2 = [3, 1, 2, 7, 5, 4, 6, 6, 9, 4, 5]
arr3 = [1, 3, 2, 7, 5, 4, 1, 3, 3, 6, 3, 4, 2]

def bubble_sort(arr)
	loop do
	swap = false

		(arr.length - 1).times do |i|
			if (arr[i] > arr[i + 1])
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				swap = true
			end
		end
		break if (swap == false)
	end

	arr
end

p bubble_sort(arr)
p bubble_sort(arr1)
p bubble_sort(arr2)
p bubble_sort(arr3)
