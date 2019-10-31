class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @content = Content.find(params[:content_id])
    @content.comments.create(comment_params.merge(user: current_user))
    redirect_to content_path(@content)
  end

  private

  def comment_params
    params.require(:comment).permit(:message, :rating)
  end
end
