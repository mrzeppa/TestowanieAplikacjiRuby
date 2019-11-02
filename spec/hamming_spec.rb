require_relative '../lib/hamming'
describe Hamming do
	it "test_empty_strands" do
		expect(Hamming.compute('', '')).to eq 0
	end
	
	
end
