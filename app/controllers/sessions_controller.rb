class SessionsController < ApplicationController
  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])

    if user.valid?
      session[:user_id] = user.id
      redirect_to dashboard_user_path(user)
    else
      redirect_to '/index'
    end
  end
end
