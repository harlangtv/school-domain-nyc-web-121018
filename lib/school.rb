class School

  attr_reader :roster

  def initialize(name)
    @roster = {}
    @name = name
  end

  # is able to add a student
  # is able to add multiple students to a class (grade)
  # is able to add students to different grades

  def add_student(name, grade)
    @name = name
    @grade = grade
    roster[@grade] = [] if !@roster.has_key?(@grade)
    roster[@grade] << @name
  end

  # is able to retreive students from a grade

  def grade(grade)
    @roster[grade]
  end

  # is able to sort the students
  def sort
    @roster.each do |grade, student|
      student.sort!
    end
  end
end
