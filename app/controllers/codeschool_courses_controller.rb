class CodeschoolCoursesController < ApplicationController
  
  def index
  	@codeschool_courses = CodeschoolCourse.all
  end

  def show
  	@codeschool_course = CodeschoolCourse.find(params[:id])
  end

  def new
  	@codeschool_course = CodeschoolCourse.new
  end

  def edit
  	@codeschool_course = CodeschoolCourse.find(params[:id])
  end

  def create
  	@codeschool_course = CodeschoolCourse.new(params[:codeschool_course])
  	if @codeschool_course.save
  		flash[:success] = "Codeschool course was successfully created."
  		redirect_to @codeschool_course
  	else 
  		render 'new'
  	end
  end

  def update
  	@codeschool_course = CodeschoolCourse.find(params[:id])
  	if @codeschool_course.update_attributes(params[:codeschool_course])
  		flash[:success] = "Codeschool course updated."
  		redirect_to @codeschool_course
  	else
  		render 'edit'
  	end
  end

  def destroy
  	CodeschoolCourse.find(params[:id]).destroy
  	flash[:success] = "Codeschool course destroyed."
  	redirect_to codeschool_courses_url
  end

end
