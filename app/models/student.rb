class Student < ActiveRecord::Base
  attr_accessible :address1, :address2, :completed, :confirm_email, 
                  :course_id, :date_of_birth, :declaration1, :declaration2, :declaration3, :declaration4, 
                  :email, :faculty_id, :first_name, :last_name, :mobile, :note1, :note2, :note3, 
                  :parent_mobile, :parent_name, :parent_phone, :phone, :post_code, :school_id, :state_id, 
                  :suburb, :title, :uac_number, :user_id
  
  attr_accessible :login_email, :password, :password_confirmation
  attr_accessor :login_email, :password, :password_confirmation
                  
  belongs_to :user
  validates_associated :user   
  
  belongs_to :state
  belongs_to :school
  belongs_to :faculty
  belongs_to :course
  
               

  validate :new_user_login
  
  before_create :update_user
  
  
  def new_user_login
    u = User.new(:email => login_email, :password => password, :password_confirmation => password_confirmation)
    u.valid?
    u.errors.full_messages.each do |msg|
      errors.add(:base, msg)  
    end
  end
  
  def update_user
    u = User.create(:email => login_email, :password => password, :password_confirmation => password_confirmation)
    self.user_id = u.id
  end
  
end
