class HomeController < ApplicationController
  def index
    @students = Student.submitted_applications
  end
end
