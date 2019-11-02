require_relative '../lib/word_count'
describe Phrase do
	it "test_count_one_word" do
		phrase = Phrase.new("word")
		counts = {"word"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_count_one_of_each_word" do
		phrase = Phrase.new("one of each")
		counts = {"one"=>1, "of"=>1, "each"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_multiple_occurrences_of_a_word" do
		phrase = Phrase.new("one fish two fish red fish blue fish")
		counts = {"one"=>1, "fish"=>4, "two"=>1, "red"=>1, "blue"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_handles_cramped_lists" do
		phrase = Phrase.new("one,two,three")
		counts = {"one"=>1, "two"=>1, "three"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_handles_expanded_lists" do
		phrase = Phrase.new("one,\ntwo,\nthree")
		counts = {"one"=>1, "two"=>1, "three"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_handles_expanded_lists" do
		phrase = Phrase.new("car: carpet as java: javascript!!&@$%^&")
		counts = {"car"=>1, "carpet"=>1, "as"=>1, "java"=>1, "javascript"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_ignore_punctuation" do
		phrase = Phrase.new("car: carpet as java: javascript!!&@$%^&")
		counts = {"car"=>1, "carpet"=>1, "as"=>1, "java"=>1, "javascript"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_include_numbers" do
		phrase = Phrase.new("testing, 1, 2 testing")
		counts = {"testing"=>2, "1"=>1, "2"=>1}
		expect(phrase.word_count).to eq counts
	end
	
	it "test_with_apostrophes" do
		phrase = Phrase.new("First: don't laugh. Then: don't cry.")
		counts = {"first"=>1, "don't"=>2, "laugh"=>1, "then"=>1, "cry"=>1}
		expect(phrase.word_count).to eq counts
	end

	it "test_with_quotations" do
		phrase = Phrase.new("Joe can't tell between 'large' and large.")
		counts = {"joe"=>1, "can't"=>1, "tell"=>1, "between"=>1, "large"=>2, "and"=>1}
		expect(phrase.word_count).to eq counts
	end

	it "test_multiple_spaces_not_detected_as_a_word" do
		phrase = Phrase.new(" multiple   whitespaces")
		counts = {"multiple"=>1, "whitespaces"=>1}
		expect(phrase.word_count).to eq counts
	end	
	
end
