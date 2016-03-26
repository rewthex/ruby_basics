def stock_picker arr
	biggest_gain = [0, 0, 0]
	arr.each_with_index do |val, index|
		arr.each_with_index do |val2, index2|
			if (index < index2 && val - val2 < biggest_gain[0])
				biggest_gain = [val - val2, index, index2]
			end
		end
	end
	puts biggest_gain[1..2]
end