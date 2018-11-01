class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    p @user = User.find(params[:user_id])
    p @gossip = Gossip.find(params[:gossip_id])
  end

  def create
    p @user = User.find(params[:user_id])
    p @gossip = Gossip.find(params[:gossip_id])
    p new_comment = Comment.create(content: params[:comment][:content], user_id: params[:user_id], gossip_id: params[:gossip_id])
    redirect_to(user_gossip_path(@user.id, @gossip.id))

  end

  def show 
    @user = User.find(params[:user_id])
    @comment = Comment.find(params[:gossip_id])
  end 


  # private

# def comment_params
#   @user = User.find(params[:user_id])
#   @gossip = Gossip.find(params[:gossip_id])
#   result = params.require(:comment).permit(:conten)
#   return result
# end

end
