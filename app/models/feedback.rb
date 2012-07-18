class Feedback < ActiveRecord::Base
  attr_accessible :answers, :school_id, :student_id, :user_id, :support_student, 
  :application_support_status_id, :application_support_comment,
  :extra_note, :read_confirmation, :recommandation_level
  
  belongs_to :student
end
