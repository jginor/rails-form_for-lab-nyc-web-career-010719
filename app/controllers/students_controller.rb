class StudentsController < ApplicationController

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    # byebug
    @student = Student.new(params[:student])
  	@student.save
  	redirect_to student_path(@student)
  end

  def update
    @student = Student.find(params[:id])
  	@student.update(params[:student])
  	redirect_to student_path(@student)
  end

  def edit
	  @student = Student.find(params[:id])
	end


end
