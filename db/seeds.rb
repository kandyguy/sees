##creating users
#user_password = 'welcome'
#User.create(:email => 'student@example.com', :password => user_password, :password_confirmation => user_password)
#User.create(:email => 'teacher@example.com', :password => user_password, :password_confirmation => user_password, :user_type => 'TEACHER')
#User.create(:email => 'admin@example.com', :password => user_password, :password_confirmation => user_password, :user_type => 'ADMIN')

##creating states
#State.create(:name => 'Queens Land')
#State.create(:name => 'New South Wales')

# #adding schools
# School.create(:name => 'school1')
# School.create(:name => 'school2')
# School.create(:name => 'school3')

#adding faculty
Faculty.create(:name => 'fac1', :school_id => School.first.id)
Faculty.create(:name => 'fac2', :school_id => School.last.id)

#adding courses
Course.create(:name => 'course1', :faculty_id => Faculty.first.id)
Course.create(:name => 'course2', :faculty_id => Faculty.last.id)

