class MinimumValueCalculator

	DIGITS_TO_USE = ['1', '0', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z']

	def self.calculate(input)
		digits_to_replace = input.split("").uniq
		replacement_map = {}
		digits_to_replace.each_with_index do |to_replace, index|
			replacement_map[to_replace] = DIGITS_TO_USE[index]
		end
		replaced_string = input.split("").reduce("") {|output, to_replace| output += replacement_map[to_replace]}
		replaced_string.to_i([replacement_map.size, 2].max)
	end

end