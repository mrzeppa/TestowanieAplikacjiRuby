require_relative '../lib/resistor_color_duo'
describe TwoFer do
	it "Case 1" do
		expect(ResistorColorDuo.two_fer).to eq "One for you, one for me."
	end
	it "Case 2" do
		expect(TwoFer.two_fer).to eq "One for Alice, one for me."
	end
	it "Case 2" do
		expect(TwoFer.two_fer).to eq "One for Bob, one for me."
  end
end
