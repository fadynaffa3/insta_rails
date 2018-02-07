class AuthenticationController < ApplicationController
  CALLBACK = (Rails.application.secrets[:public_url] + '/authentication/callback').freeze

  def redirect
    redirect_to Instagram.authorize_url(redirect_uri: CALLBACK)
  end

  def callback
    response = Instagram.get_access_token(params[:code], redirect_uri: CALLBACK)
    session[:access_token] = response.access_token
    redirect_to instagram_feed_path
  rescue Exception
    session[:access_token] = nil
    redirect_to authentication_redirect_path
  end

  def logout
    session[:access_token] = nil
    redirect_to root_path
  end
end
