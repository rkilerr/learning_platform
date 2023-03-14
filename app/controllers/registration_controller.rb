class RegistrationController < ApplicationController
  include RegistrationHelper

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      create_student_or_teacher(user_params[:user_type], @user.id)
      session[:user_id] = @user.id
      redirect_to root_path, notice: "Successfully created account"
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :full_name, :user_type, :email)
  end
end
