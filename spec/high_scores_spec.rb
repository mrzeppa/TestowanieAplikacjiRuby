require_relative '../lib/high_scores'
describe HighScores do
	it "test_list_of_scores" do
		expect(HighScores.new(scores).scores).to eq [30, 50, 20, 70]
	end
	
end
