require_relative '../lib/word_count'
describe HighScores do
	it "test_count_one_word" do
		phrase = Phrase.new("word")
		counts = {"word"=>1}
		expect(phrase.word_count).to eq counts
	end
end
