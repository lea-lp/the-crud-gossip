class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @user = User.find(params[:user_id])
    @gossip = Gossip.find(params[:gossip_id])
    new_comment = Comment.create(comment_params)
    redirect_to(user_gossip_path(@user.id, @gossip.id))
  end

  def show 
    @comment = Comment.find(params[:gossip_id])
  end 


  private

def comment_params
  result = params.require(:comment).permit(:anonymous_commentor, :content)
  result[:gossip_id] = params[:gossip_id]
  return result
end

end
