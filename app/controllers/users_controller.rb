class UsersController < ApplicationController
  def new

  end

  def create
    user = User.new(
      first_name: params[:first_name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation])
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to 'show'
    else
      redirect_to '/'
    end
end
