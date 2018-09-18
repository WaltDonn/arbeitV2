class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.authenticate(params[:email], params[:password])
    # logging user information for debugging purposes...
    logger.info(User.find_by_email(params[:email]).as_json)
    session[:user_id] = user.id
    redirect_to root_url, notice: "Logged in!"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
