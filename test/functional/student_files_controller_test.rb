require 'test_helper'

class StudentFilesControllerTest < ActionController::TestCase
  setup do
    @student_file = student_files(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_files)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_file" do
    assert_difference('StudentFile.count') do
      post :create, :student_file => { :name => @student_file.name, :student_id => @student_file.student_id }
    end

    assert_redirected_to student_file_path(assigns(:student_file))
  end

  test "should show student_file" do
    get :show, :id => @student_file
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @student_file
    assert_response :success
  end

  test "should update student_file" do
    put :update, :id => @student_file, :student_file => { :name => @student_file.name, :student_id => @student_file.student_id }
    assert_redirected_to student_file_path(assigns(:student_file))
  end

  test "should destroy student_file" do
    assert_difference('StudentFile.count', -1) do
      delete :destroy, :id => @student_file
    end

    assert_redirected_to student_files_path
  end
end
