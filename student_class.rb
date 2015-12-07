class Student
  def method_missing(m, *args)
    if m.to_s.start_with?("grade_for_")
      puts "this is the grade"
    else
      super
    end
  end
end
s = Student.new
s.grade_for_english
s.blah