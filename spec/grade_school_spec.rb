require_relative '../lib/grade_school'
describe GradeSchool do
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
	
end
