class UsersController < ApplicationController
  def show
    user = User.find(session[:user_id])
    session[:user_id] = user.id
    render json: user
  end
end
