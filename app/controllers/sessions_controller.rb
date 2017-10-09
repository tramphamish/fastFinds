class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(
      email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in!"
      redirect_to "/show"
    else
      redirect_to "/"
    end

    def destroy
      session[:user_id] = nil
      flash[:success] = "Successfully logged out!"
      redirect_to "/"
    end
end