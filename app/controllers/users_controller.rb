class UsersController < ApplicationController

  def create
  # Create the user from params
  @user = User.new(params[:user])
  if @user.save
  redirect_to root_path, :notice => "User created"
  else
  render :action => "new"
  end
  end

end
