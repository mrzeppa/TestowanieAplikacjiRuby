require_relative '../lib/matrix'
describe Matrix do
	it "test_extract_a_row" do
		matrix = Matrix.new("1 2\n10 20")
		expect(matrix.rows[0]).to eq [1, 2]
	end
	
end
