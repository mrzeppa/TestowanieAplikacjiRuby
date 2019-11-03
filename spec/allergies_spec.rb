require_relative '../lib/allergies'
describe Grains do
	it "test_no_allergies_means_not_allergic" do
		allergies = Allergies.new(0)
		expect(allergies.allergic_to?('peanuts')).to eq false
		expect(allergies.allergic_to?('cats')).to eq false
		expect(allergies.allergic_to?('strawberries')).to eq false
	end
end
