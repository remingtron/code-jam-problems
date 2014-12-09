require_relative 'minimum_value_calculator'

describe MinimumValueCalculator do

	it 'returns 1 for single character string' do
		expect(MinimumValueCalculator.calculate('a')).to eq 1
	end

	it 'returns 3 for same character twice' do
		expect(MinimumValueCalculator.calculate('bb')).to eq 3
	end

	it 'returns 2 for two unique characters' do
		expect(MinimumValueCalculator.calculate('bc')).to eq 2
	end

	it 'returns 11 for three unique characters' do
		expect(MinimumValueCalculator.calculate('bcd')).to eq 11
	end

	it 'returns 4 for 100' do
		expect(MinimumValueCalculator.calculate('100')).to eq 4
	end

end