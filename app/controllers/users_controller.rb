class UsersController < ApplicationController
  #before_filter :is_admin?

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to products_path, :notice => 'User creation successful!'
    else
      render :action => 'new'
    end
  end

  def index
    @users = User.all
  end
end