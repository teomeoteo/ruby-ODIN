def caesar_cipher(str, shift)
	str.chars.map do |char|
		unless (char.ord.between?(65, 90) || char.ord.between?(97, 122))
			next char
		end

		start_index = char.ord.between?(65, 90) ? 65 : 97
		shift_value = (char.ord + shift - start_index) % 26
		new_ord =  start_index + shift_value

		new_ord.chr

	end.join
end

p caesar_cipher("hello", 2)
p caesar_cipher("Hello I am GroOoO0Tt!%2'", 100)
