class UsersController < ApplicationController
  
  before_action :authenticate_admin!, except:[:new]
  def new
    render :new
  end

  def create
    @user = User.new(
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

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = User.find_by(
      email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      @user.first_name = params[:first_name]
      @user.last_name = params[:last_name]
      @user.email = params[:email]
      @user.img_url = params[:img_url]
      @user.zip_code = params[:zip_code]
      @user.phone = params[:phone]
      @user.password = params[:password]
      if @user.save
        flash[:success] = "Info has been successfully updated!"
        redirect_to "/user/#{@user.id}"
      else
        render :edit
      end
    end
  end
end