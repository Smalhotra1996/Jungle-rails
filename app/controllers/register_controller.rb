class RegisterController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def create
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/register'
    end
  end

  private
  
  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :password_confirmation)
  end
end
