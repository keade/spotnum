class UsersController < ApplicationController
  
  # POST /users
  # POST /users.json
  def create
    @user = User.new(params[:user])
    if @user.save
    # Deliver the signup_email
    Notifier.signup_email(@user).deliver
    redirect_to root_path
    else
    render :action => "new"
  end
end

end
