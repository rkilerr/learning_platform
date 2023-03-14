module RegistrationHelper
  def create_student_or_teacher(user_type, user_id)
    case user_type
    when "teacher"
      @teacher = Teacher.new(user_id: user_id)
      @teacher.save
    when "student"
      @student = Student.new(user_id: user_id)
      @student.save
    end
  end
end
