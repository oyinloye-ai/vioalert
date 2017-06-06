class SessionsController < ApplicationController
  def create
  #raise :test
  	@user = User.find_or_create_from_auth_hash(auth_hash)
  	# raise :test
  	session[:user_id] = @user.id  	
  	redirect_to root_path
  end

  def destroy
  end

  protected
  def auth_hash
  	request.env['omniauth.auth']
  end
end
  