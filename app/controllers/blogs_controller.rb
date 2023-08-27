class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def create
    blog = Blog.new(blog_params)
    if blog.save
      flash[:success] = "New blog has been created..."
      redirect_to "/"
    else
      flash[:danger] = blog.errors.full_messages
      redirect_to "/new"
    end
  end

  def show
    
  end

  def new
    @blog = Blog.new
  end

  private
  def blog_params
    params.require(:blog).permit(
      :title,
      :content,
      author_attributes: [:name, :email]
    )
  end
end