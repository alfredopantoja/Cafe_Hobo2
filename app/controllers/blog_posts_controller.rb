class BlogPostsController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  
  def index
  	@blog_posts = BlogPost.all
  end

  def show
  	@blog_post = BlogPost.find(params[:id])
  end

  def new
    authorize! :new, @blog_post, message: 'Not authorized as an administrator.'
  	@blog_post = BlogPost.new
  end

  def edit
    authorize! :edit, @blog_post, message: 'Not authorized as an administrator.'
  	@blog_post = BlogPost.find(params[:id])
  end

  def create
    authorize! :create, @blog_post, message: 'Not authorized as an administrator.'
  	@blog_post = BlogPost.new(params[:blog_post])
  	if @blog_post.save
  		flash[:success] = "Blog post was successfully created."
  		redirect_to @blog_post
  	else
  		render 'new'
  	end
  end

  def update
    authorize! :update, @blog_post, message: 'Not authorized as an administrator.'
  	@blog_post = BlogPost.find(params[:id])
  	if @blog_post.update_attributes(params[:blog_post])
  		flash[:success] = "Blog post updated."
  		redirect_to @blog_post
  	else
  		render 'edit'
  	end
  end

  def destroy
    authorize! :destroy, @blog_post, message: 'Not authorized as an administrator.'
  	BlogPost.find(params[:id]).destroy
  	flash[:success] = "Blog post destroyed."
  	redirect_to blog_posts_url
  end

end
