class UsersController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      if is_admin? then
        redirect_to users_path, :notice => 'User has been successfully created.'
      else
        redirect_to my_account_path, :notice => "Great, You have created an account! Now you can ad some more details about yourself or jump to products right on."
      end
    else
      render :action => 'new'
    end
  end

  def index
    if is_admin? then
      @users = User.all
    else
      redirect_to my_account_path
    end
  end

  def show
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])

    respond_to do |format|
      if current_user.update_attributes(params[:user], :without_protection => true)
        format.html { redirect_to my_account_url, notice: 'User was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @users.errors, status: :unprocessable_entity }
      end
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