require_relative 'minimum_value_calculator'

File.open('output.out', 'w') do |output|
	File.readlines('A-large-practice.in').each_with_index do |input_line, index|
		next if index == 0
		output.write("Case \##{index}: #{MinimumValueCalculator.calculate(input_line.chomp)}\n")
	end
end