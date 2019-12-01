require_relative '../lib/grains'
RSpec.describe Grains do
	describe ".square" do
	it("1") { expect(Grains.square(1)).to(eq(1)) }
	it("2") { expect(Grains.square(2)).to(eq(2)) }
	it("3") { expect(Grains.square(3)).to(eq(4)) }
	it("8") { expect(Grains.square(4)).to(eq(8)) }
	it("16") { expect(Grains.square(16)).to(eq(32768)) }
	it("32") { expect(Grains.square(32)).to(eq(2147483648)) }
	it("64") { expect(Grains.square(64)).to(eq(9223372036854775808)) }
	context 'an exception is raised' do
		it("when square 0") do
			expect { Grains.square(0) }.to raise_error(ArgumentError)
		end
		it("on negative square") do
			expect { Grains.square(-1) }.to raise_error(ArgumentError)
		end
		
		it("on greater than 64 square") do
			expect { Grains.square(65) }.to raise_error(ArgumentError)
		end
	end
end
	describe ".total" do
	it("total number of grains") { expect(Grains.total).to(eq(18446744073709551615)) }
	end
end