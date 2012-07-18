##creating users
#user_password = 'welcome'
#User.create(:email => 'student@example.com', :password => user_password, :password_confirmation => user_password)
#User.create(:email => 'teacher@example.com', :password => user_password, :password_confirmation => user_password, :user_type => 'TEACHER')
#User.create(:email => 'admin@example.com', :password => user_password, :password_confirmation => user_password, :user_type => 'ADMIN')
#
##creating states
#State.create(:name => 'Queens Land')
#State.create(:name => 'New South Wales')
#
##adding schools
#School.create(:name => 'school1')
#School.create(:name => 'school2')
#School.create(:name => 'school3')
#
##adding faculty
#Faculty.create(:name => 'fac1', :school_id => School.first.id)
#Faculty.create(:name => 'fac2', :school_id => School.last.id)
#
##adding courses
#Course.create(:name => 'course1', :faculty_id => Faculty.first.id)
#Course.create(:name => 'course2', :faculty_id => Faculty.last.id)

#Adding the category
Category.create(:category_name => 'Study Skills')
Category.create(:category_name => 'Acadamic Skills')
Category.create(:category_name => 'Resilienace')
Category.create(:category_name => 'Preparedness for University')
Category.create(:category_name => 'Community/School participation')

#Adding question
Question.create(:category_id => Category.find_by_category_name('Study Skills').id, :question_text => 'Has well developed organisational skills')
Question.create(:category_id => Category.find_by_category_name('Study Skills').id, :question_text => 'Able to prioritise tasks in order of importance') 
Question.create(:category_id => Category.find_by_category_name('Study Skills').id, :question_text => 'Has time-management skills and can plan and meet deadlines')
Question.create(:category_id => Category.find_by_category_name('Study Skills').id, :question_text => 'Likes learning new things and actively seeks out information')

Question.create(:category_id => Category.find_by_category_name('Acadamic Skills').id, :question_text => 'Capacity for abstract thought and analysis')
Question.create(:category_id => Category.find_by_category_name('Acadamic Skills').id, :question_text => 'Able to research and synthesise text from several sources') 
Question.create(:category_id => Category.find_by_category_name('Acadamic Skills').id, :question_text => 'Able to organise ideas and articulate a position orally and in written form')
Question.create(:category_id => Category.find_by_category_name('Acadamic Skills').id, :question_text => 'Engages in class discussions and contributes and shares ideas')


Question.create(:category_id => Category.find_by_category_name('Preparedness for University').id, :question_text => 'Is well suited to their selected course ')
Question.create(:category_id => Category.find_by_category_name('Preparedness for University').id, :question_text => 'I am confident in their ability to be able to study at a tertiary level ') 
Question.create(:category_id => Category.find_by_category_name('Preparedness for University').id, :question_text => 'Has motivation to achieve long-term goals')

Question.create(:category_id => Category.find_by_category_name('Community/School participation').id, :question_text => 'Has positively contributed to the school or wider community')


#Adding the category
Answer.create(:answer_text => 'Strongly agree')
Answer.create(:answer_text => 'Agree')
Answer.create(:answer_text => 'Uncertain')
Answer.create(:answer_text => ' Disagree')
Answer.create(:answer_text => 'strongly disagree')
Answer.create(:answer_text => 'Not Applicable')


#Adding question





