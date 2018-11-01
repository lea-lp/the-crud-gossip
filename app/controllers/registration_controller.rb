class RegistrationController < ApplicationController
  def new
  	result = User.where(email: params[:user][:email], password: params[:user][:password]).first
     if result == nil
         redirect_to users_path
     else
         redirect_to user_gossips_path(result.id)
     end
  end
end
