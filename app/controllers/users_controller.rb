class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    if params[:approved] == "false"
      @users = User.find_all_by_approved(false)
    else
      @users = User.all
    end
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  def approve_user
    @user = User.find(params[:id])
    @user.approved = true
    @user.save!
    redirect_to :index
  end

end