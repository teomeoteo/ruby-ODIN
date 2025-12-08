dictionary = ["I", "am", "somehow", "love", "mountains", "mount", "blade", "sword", "'", ";", "&", " S"]


def substrings(str, dict)
	output_hash = Hash.new
	dict.each { |pattern| output_hash[pattern] = str.scan(/#{pattern}/i).count }
	output_hash
end

p substrings("Hello I'm Someone who; is not a. Pers on. I Love mount&blade. lovE mountains", dictionary)

