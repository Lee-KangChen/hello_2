# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
# POST /session
  def create
    user = User.find_by(email: params[:email])

    if user = user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      message = "Welcome!#{user.name}"
    else
      message = 'Login Fail'
    end
    redirect_to root_path, notice: message
  end

# DELETE /session
  def destroy
    session.delete(:user_id)
    redirect_to root_path, notice: 'logut'
  end
end
