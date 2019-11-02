require_relative '../lib/grains'
describe Grains do
	it "test_encode_empty_string" do
	    input = ''
		output = ''
		assert_equal output, RunLengthEncoding.encode(input)
	end

	it "test_encode_single_characters_only_are_encoded_without_count" do
		input = 'XYZ'
		output = 'XYZ'
		assert_equal output, RunLengthEncoding.encode(input)
	end
	it "test_encode_string_with_no_single_characters" do
		input = 'AABBBCCCC'
		output = '2A3B4C'	
		assert_equal output, RunLengthEncoding.encode(input)
	end
	it "test_encode_single_characters_mixed_with_repeated_characters" do
	    input = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
		output = '12WB12W3B24WB'
		assert_equal output, RunLengthEncoding.encode(input)
	end
	it "test_encode_multiple_whitespace_mixed_in_string" do
	    input = '  hsqq qww  '
		output = '2 hs2q q2w2 '
		assert_equal output, RunLengthEncoding.encode(input)
	end
	it "test_encode_lowercase_characters" do
		input = 'aabbbcccc'
		output = '2a3b4c'
		assert_equal output, RunLengthEncoding.encode(input)
	end
	it "test_decode_empty_string" do
	    input = ''
		output = ''
		assert_equal output, RunLengthEncoding.decode(input)
	end
	it "test_decode_single_characters_only" do
	    input = 'XYZ'
		output = 'XYZ'
		assert_equal output, RunLengthEncoding.decode(input)
	end
	it "test_decode_string_with_no_single_characters" do
	    input = '2A3B4C'
		output = 'AABBBCCCC'
		assert_equal output, RunLengthEncoding.decode(input)
	end
	it "test_decode_single_characters_with_repeated_characters" do
		input = '12WB12W3B24WB'
		output = 'WWWWWWWWWWWWBWWWWWWWWWWWWBBBWWWWWWWWWWWWWWWWWWWWWWWWB'
		assert_equal output, RunLengthEncoding.decode(input)
	end
	it "test_decode_multiple_whitespace_mixed_in_string" do
	    input = '2 hs2q q2w2 '
		output = '  hsqq qww  '
		assert_equal output, RunLengthEncoding.decode(input)
	end
	it "test_decode_lower_case_string" do
	    input = '2a3b4c'
		output = 'aabbbcccc'
		assert_equal output, RunLengthEncoding.decode(input)
	end
	it "test_consistency_encode_followed_by_decode_gives_original_string" do
		input = 'zzz ZZ  zZ'
		encoded = RunLengthEncoding.encode(input)
		assert_equal output, RunLengthEncoding.decode(input)
	end
end
