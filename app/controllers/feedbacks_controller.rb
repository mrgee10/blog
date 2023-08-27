class FeedbacksController < ApplicationController
  def index
    @feedbacks = Feedback.all
  end

  def create
    blog = Blog.find(feedback_params[:blog_id])
    author = Author.find(blog.author_id)
    feedback = Feedback.new(feedback_params)
    if feedback.save
      FeedbackMailer.feedback_mailer(author, feedback).deliver_now
      flash[:success] = "New feedback has been posted..."
      redirect_to "/"
    else
      flash[:danger] = feedback.errors.full_messages
      redirect_to "/" + feedback_params[:blog_id] + "/show"
    end
  end

  def show
    @blogs = Feedback.find_by(blog_id: params[:id])
    @feedbacks = Feedback.where(blog_id: params[:id])
    if @blogs.nil?
      flash[:info] = "No feedback posted"
      redirect_to "/"
    end
  end

  def new
    @feedbacks = Feedback.new
    @blog_id = params[:id]
  end

  private
  def feedback_params
    params.require(:feedback).permit(
      :blog_id,
      :content
    )
  end
end