class DepartmentsController < ApplicationController
  before_action :authenticate_user!
  def new
  	@department=Department.new
  end

  def index
  	@departments=Department.all
  end
  def create
    @department=Department.new(department_params)
    @department.save
    redirect_to departments_path
  end
  def destroy
    @department = Department.find(params[:id])
  @department.destroy
 
  redirect_to departments_path
  end

  def edit
  end
  private 

  def department_params
     params.require(:department).permit(:name)
  end 
end
