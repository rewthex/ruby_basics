def caesar_cipher(string, shift)
	az_low = ('a'..'z').to_a
	az_upp = ('A'..'Z').to_a
	string_array = string.split('')
	low_hash = Hash[az_low.zip az_low.rotate(shift)]
	upp_hash = Hash[az_upp.zip az_upp.rotate(shift)]
	string_array.each_with_index do |char, index|
		if low_hash.key?(char)
			string_array[index] = low_hash[char]
		elsif upp_hash.key?(char)
			string_array[index] = upp_hash[char]
		end
	end
	string_array.join
end