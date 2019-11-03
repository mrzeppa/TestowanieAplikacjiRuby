require_relative '../lib/grade_school'
describe School do
	everyone 
	[
      { grade: 3, students: %w(Deemee Eeemee) },
      { grade: 1, students: %w(Effmee Geemee) },
      { grade: 2, students: %w(Aimee Beemee Ceemee) }
    ]

  everyone_sorted
    [
      { grade: 1, students: %w(Effmee Geemee) },
      { grade: 2, students: %w(Aimee Beemee Ceemee) },
      { grade: 3, students: %w(Deemee Eeemee) }
    ]


	it "test_empty_grade" do
		school = School.new
		expected = []
		expect(school.students(1)).to eq expected
	end
	
	it "test_add_student" do
		school = School.new
		school.add('Aimee', 2)
		expected = ['Aimee']
		expect(school.students(2)).to eq expected
	end
end
