class Question < ActiveRecord::Base
  attr_accessible :category_id, :question_text
  
  belongs_to :category
end
