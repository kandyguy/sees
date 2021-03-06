require 'fileutils'
class StudentsController < ApplicationController
  before_filter :authenticate_user!, :except => [:new, :create, :submit]
  before_filter :cannot_create_application_for_already_created, :only => [:new, :create]
  
  # GET /students/1
  # GET /students/1.json
  def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @student }
    end
  end

  # GET /students/new
  # GET /students/new.json
  def new
    @student = Student.new
  end

  # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
  end

  # POST /students
  # POST /students.json
  def create
    #if verify_recaptcha
      @student = Student.new(params[:student])
      if @student.save
        Student.number_of_files.to_i.times do |i|
          unless params["file"].nil? || params["file"]["#{i}"].nil?
            tmp = params["file"]["#{i}"].tempfile
            file_name = params["file"]["#{i}"].original_filename
            file = File.join("public/data", "#{file_name}#{@student.id}")
            StudentFile.create(:name => "#{file_name}#{@student.id}", :student_id => @student.id)
            FileUtils.cp tmp.path, file
          end  
        end
        @student.complete if @student.vaidate_required_field?
        redirect_to student_path(@student) 
      else
        render :action => "new" 
      end
    #else
    #  redirect_to new_student_path, :alert => 'Invalid captcha' 
    #end  
  end

  # PUT /students/1
  # PUT /students/1.json
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        @student.complete if @student.vaidate_required_field?
        format.html { redirect_to @student, :notice => 'Student was successfully updated.' }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to students_url }
      format.json { head :no_content }
    end
  end
  
  def submit
    
  end
  
  def cannot_create_application_for_already_created
    #FIXME: do not allow the new action for already logged users 
  end
  
end
