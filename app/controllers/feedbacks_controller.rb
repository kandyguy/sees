class FeedbacksController < ApplicationController
  
  def new
    @feedback = Feedback.new
    @student = Student.find(params[:id])
  end

  def create
    @feedback = Feedback.new(params[:feedback])
    if @feedback.save
       redirect_to edit_feedback_path(@feedback)
    else
      render action: "new"
      @student = Student.find(@student.id)
    end 
  end
  
  def edit
    @feedback = Feedback.find(params[:id])
  end
end
