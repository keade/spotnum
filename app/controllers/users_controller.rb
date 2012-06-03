class UsersController < ApplicationController
  
  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    
    respond_to do |format|
      if @user.save
        UserMailer.welcome_email(@user).deliver
        flash[:success] = "You are now ready to begin making more!"
        redirect_to root_path
      end
    end
  end
end
