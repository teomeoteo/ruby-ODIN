def c_cipher(str, shift)
	str.chars.map { |char| shift_wrap(char, shift) }.join
end

def shift_wrap(char, shift)
	char_ord = char.ord

	return char unless char_ord.between?(65, 90) || char_ord.between?(97, 122)
	
	base_ord = char.ord.between?(65, 90) ? 65 : 97
	# the % 26 makes it "wrap" effectively, since it will always give
	# the remainder once we exceed the alphabet letter limit
	# [current_ord] + [...shift...] is the total shift value from some [start_ord]
	# we get our relative start by subtracting [shifted_ord] - [start_ord]
	# (char_ord + shift - base_ord) gives us the total ord value from [start_ord]
	# and all that's left is to "wrap" it using the modulo operator
	real_shift = (char_ord + shift - base_ord) % 26
	(base_ord + real_shift).chr
end

p c_cipher("I am Groot!", 5)
p c_cipher("z", -12)
p c_cipher("za", -13)
