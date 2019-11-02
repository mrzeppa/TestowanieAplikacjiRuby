require_relative '../lib/two_fer'
describe TwoFer do
	it "Case 1" do
		expect(TwoFer.two_fer).to eq "One for you, one for me."
	end
	it "Case 2" do
		expect(TwoFer.two_fer('Alice')).to eq "One for Alice, one for me."
	end
	it "Case 2" do
		expect(TwoFer.two_fer('Bob')).to eq "One for Bob, one for me."
  end
end
