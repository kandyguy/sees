class HomeController < ApplicationController
  before_filter :handle_student_login
  
  def index
    @students = Student.submitted_applications
  end
  
  def handle_student_login
    if current_user.student?
      redirect_to student_path(Student.logged_in_student(current_user.id))
    end
  end
  
end
