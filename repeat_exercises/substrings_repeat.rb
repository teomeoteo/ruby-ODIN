dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(str, arr)
	arr.map do |word|
		count = str.scan(/#{word}/i).count
		next unless count > 0
		[word, count]
	end.compact.to_h
end


p substrings("Howdy partner, sit down! How's it going?", dictionary)
