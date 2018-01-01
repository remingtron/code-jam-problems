require_relative 'firefly_swarm_tracker'

describe FireflySwarmTracker do
	it 'returns 0 if single firefly passes through origin' do
		result = FireflySwarmTracker.calculateClosestPoint([0,0,0,0,0,1])
		expect(result[:distance]).to eq 0
	end

	it 'returns 1 if single fly goes along z=1 line' do
		result = FireflySwarmTracker.calculateClosestPoint([0,-1,1,0,1,0])
		expect(result[:distance]).to eq 1
	end
end