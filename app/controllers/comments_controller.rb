class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/scenes/#{comment.scene.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, scene_id: params[:scene_id])
  end
end
