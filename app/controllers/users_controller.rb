class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	new_user = User.create(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
  	redirect_to(user_path(new_user.id))
  end

  def show
      @user = User.find(params[:id])
      # @comments = @gossip.comments

      # @gossip = Gossip.find(params[:id])
    end


end
