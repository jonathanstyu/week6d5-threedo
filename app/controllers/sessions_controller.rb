class SessionsController < ApplicationController
  def create
    user_attributes = params[:user]
    @user = login_user(
      user_attributes[:username],
      user_attributes[:password]
    )
    
    if !@user
      @user = User.new(user_attributes)
    end
    render :json => @user
  end

  def new
    @user = User.new
  end
end
