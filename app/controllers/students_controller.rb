class StudentsController < ApplicationController
  def new
  	@student=Student.new
  end

  def create
  	
   @department=Department.find(params[:student][:department_id])
  	@student=@department.students.create(student_params)
  	@student.save
  	 UserMailer.welcome_email(@student).deliver_now
  	redirect_to students_path(department_id: @student.department_id)
  end

  def index
  	#department=Department.where([:students][:department_id])
  #	@students=Student.group(:department_id).select(:student_name,:email,:dob)
   @department=Department.find(params[:department_id])

    @students=@department.students
  end
  def show_all
    @students=Student.all
  end
  def destroy
    @student = Student.find(params[:id])
  @student.destroy
 
  redirect_to students_show_all_path
  end

  def show
  	@student=Student.find(params[:students][:department_id])
  end

  def edit
  end
  private
  def student_params
     params.require(:student).permit(:student_name,:dob,:email	)
  end
end
