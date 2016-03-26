def substrings(string, dict)
	matches = Hash.new
	string_array = string.downcase.split(/\W+/)
	string_array.each do |string_word|
		dict.each do |dict_word|
			if string_word.include?(dict_word) && matches.key?(dict_word)
				matches[dict_word] = matches[dict_word] + 1
			elsif string_word.include?(dict_word)
				matches[dict_word] = 1
			end
		end
	end
	matches
end