class SessionsController < ApplicationController
  skip_before_action :authorize_user
  def new
    puts session[:current_user_id]
    if session[:current_user_id]
      
      redirect_to activities_url
    end
  end

  def create
    user = User.find_by_email(params[:email])
    if user and user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to activities_url
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to activities_url, notice: "Logged out"
  end
end
