class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      zip_code: params[:zip_code],
      active: true,
      admin: false,
      password: params[:password],
      password_confirmation: params[:password_confirmation])
    if @user.save
      session[:user_id] = @user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/user/#{@user.id}/edit'
    else
      redirect_to "/signup"
    end
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find_by(
      email: params[:email])
    if current_user && @user.authenticate(params[:password])
      session[:id] = @user.id
      @user.first_name = params[:first_name]
      @user.last_name = params[:last_name]
      @user.email = params[:email]
      @user.img_url = params[:img_url]
      @user.zip_code = params[:zip_code]
      @user.phone = params[:phone]
      @user.password = params[:password]
        if @user.save
          flash[:success] = "Info has been successfully updated!"
          redirect_to '/user/#{@user.id}'
        else
          render :edit
        end
      end
    end
end