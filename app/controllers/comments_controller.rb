class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    new_comment = Comment.create(comment_params)
    puts "Les COMMENT PARAMS = #{comment_params}"
    redirect_to(gossip_path(params[:gossip_id]))
  end

  def show 
    p @comment = Comment.find(params[:gossip_id])
  end 


  private

def comment_params
  result = params.require(:comment).permit(:anonymous_commentor, :content)
  result[:gossip_id] = params[:gossip_id]
  return result
end

end
