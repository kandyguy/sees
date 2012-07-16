require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  setup do
    @student = students(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:students)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student" do
    assert_difference('Student.count') do
      post :create, :student => { :address1 => @student.address1, :address2 => @student.address2, :completed => @student.completed, :confirm_email => @student.confirm_email, :course => @student.course, :date_of_birth => @student.date_of_birth, :declaration1 => @student.declaration1, :declaration2 => @student.declaration2, :declaration3 => @student.declaration3, :declaration4 => @student.declaration4, :email => @student.email, :faculty => @student.faculty, :first_name => @student.first_name, :last_name => @student.last_name, :mobile => @student.mobile, :note1 => @student.note1, :note2 => @student.note2, :note3 => @student.note3, :parent_mobile => @student.parent_mobile, :parent_name => @student.parent_name, :parent_phone => @student.parent_phone, :phone => @student.phone, :post_code => @student.post_code, :school_id => @student.school_id, :state_id => @student.state_id, :suburb => @student.suburb, :title => @student.title, :uac_number => @student.uac_number }
    end

    assert_redirected_to student_path(assigns(:student))
  end

  test "should show student" do
    get :show, :id => @student
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student
    assert_response :success
  end

  test "should update student" do
    put :update, :id => @student, :student => { :address1 => @student.address1, :address2 => @student.address2, :completed => @student.completed, :confirm_email => @student.confirm_email, :course => @student.course, :date_of_birth => @student.date_of_birth, :declaration1 => @student.declaration1, :declaration2 => @student.declaration2, :declaration3 => @student.declaration3, :declaration4 => @student.declaration4, :email => @student.email, :faculty => @student.faculty, :first_name => @student.first_name, :last_name => @student.last_name, :mobile => @student.mobile, :note1 => @student.note1, :note2 => @student.note2, :note3 => @student.note3, :parent_mobile => @student.parent_mobile, :parent_name => @student.parent_name, :parent_phone => @student.parent_phone, :phone => @student.phone, :post_code => @student.post_code, :school_id => @student.school_id, :state_id => @student.state_id, :suburb => @student.suburb, :title => @student.title, :uac_number => @student.uac_number }
    assert_redirected_to student_path(assigns(:student))
  end

  test "should destroy student" do
    assert_difference('Student.count', -1) do
      delete :destroy, :id => @student
    end

    assert_redirected_to students_path
  end
end
