class CodeschoolCoursesController < ApplicationController
  before_filter :authenticate_user!
  
  def index
    authorize! :index, @codeschool_course, message: 'Not authorized as an administrator.'
  	@codeschool_courses = CodeschoolCourse.all
  end

  def show
    authorize! :show, @codeschool_course, message: 'Not authorized as an administrator.'
  	@codeschool_course = CodeschoolCourse.find(params[:id])
  end

  def new
    authorize! :new, @codeschool_course, message: 'Not authorized as an administrator.'
  	@codeschool_course = CodeschoolCourse.new
  end

  def edit
    authorize! :edit, @codeschool_course, message: 'Not authorized as an administrator.'
  	@codeschool_course = CodeschoolCourse.find(params[:id])
  end

  def create
    authorize! :create, @codeschool_course, message: 'Not authorized as an administrator.'
  	@codeschool_course = CodeschoolCourse.new(params[:codeschool_course])
  	if @codeschool_course.save
  		flash[:success] = "Codeschool course was successfully created."
  		redirect_to @codeschool_course
  	else 
  		render 'new'
  	end
  end

  def update
    authorize! :update, @codeschool_course, message: 'Not authorized as an administrator.'
  	@codeschool_course = CodeschoolCourse.find(params[:id])
  	if @codeschool_course.update_attributes(params[:codeschool_course])
  		flash[:success] = "Codeschool course updated."
  		redirect_to @codeschool_course
  	else
  		render 'edit'
  	end
  end

  def destroy
    authorize! :destroy, @codeschool_course, message: 'Not authorized as an administrator.'
  	CodeschoolCourse.find(params[:id]).destroy
  	flash[:success] = "Codeschool course destroyed."
  	redirect_to codeschool_courses_url
  end

end
