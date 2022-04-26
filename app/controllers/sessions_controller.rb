class SessionsController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase) 
    if user && user.authenticate(params[:session][:password])
      log_in user 
      redirect_to users_path, notice: "Your account has been confirmed."
    else
      flash[:danger] = 'Invalid email/password combination'
    end
  end
  
  def destroy
    log_out
    redirect_to root_path
  end
end
