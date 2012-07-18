class Feedback < ActiveRecord::Base
  attr_accessible :answers, :question_id, :school_id, :student_id, :user_id
end
