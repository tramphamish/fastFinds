class SessionsController < ApplicationController
  def new
    render :new
  end

  def create
    user = User.find_by(
      email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:success] = "Successfully logged in!"
      redirect_to "/users/#{@users.id}"
    else
      flash[:warning] = "Invalid E-Mail or password!"
      redirect_to "/login"
    end
  end

    def destroy
      session[:user_id] = nil
      flash[:success] = "Successfully logged out!"
      redirect_to "/"
    end
end
