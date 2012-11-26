class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to products_path, :notice => 'You have successfully signed up to Lasica. Your adventure begins!'
    else
      render :action => 'new'
    end
  end

  #def create
  # @user = User.new(params[:user])
  #if @user.save
  #if is_admin? then redirect_to users_path, :notice => 'User has been successfully created.'
  #elsif redirect_to products_path, :notice => 'You have successfully signed up to Lasica. Your adventure begins!'
  #end
  #else
  #render :action => 'new'
  #end
  #end

  def index
    if is_admin? then
      @users = User.all
    end
  end

  def destroy
    @users = User.find(params[:id])
    @users.destroy

    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User has been successfully erased.' }
      format.json { head :no_content }
    end
  end
end