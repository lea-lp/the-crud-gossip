class UsersController < ApplicationController
  
  def index
    @user = User.new
  end 

  def new
  	@user = User.new
  end

  def create
  	@new_user = User.create(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
  	redirect_to(user_path(@new_user.id))
  end

  def show
      @user = User.find(params[:id])
  end




  # private

  # def user_params
  #       new_user = User.create(name: params[:user][:name], email: params[:user][:email], password: params[:user][:password])
  #       return new_user
  #     end 


end
