class BlogPostsController < ApplicationController
  
  def index
  	@blog_posts = BlogPost.all
  end

  def show
  	@blog_post = BlogPost.find(params[:id])
  end

  def new
  	@blog_post = BlogPost.new
  end

  def edit
  	@blog_post = BlogPost.find(params[:id])
  end

  def create
  	@blog_post = BlogPost.new(params[:blog_post])
  	if @blog_post.save
  		flash[:success] = "Blog post was successfully created."
  		redirect_to @blog_post
  	else
  		render 'new'
  	end
  end

  def update
  	@blog_post = BlogPost.find(params[:id])
  	if @blog_post.update_attributes(params[:blog_post])
  		flash[:success] = "Blog post updated."
  		redirect_to @blog_post
  	else
  		render 'edit'
  	end
  end

  def destroy
  	BlogPost.find(params[:id]).destroy
  	flash[:success] = "Blog post destroyed."
  	redirect_to blog_posts_url
  end

end
