class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from InvalidAccessToken do
    session[:access_token] = nil
    redirect_to authentication_redirect_path
  end

  private

  def validate_instagram_token
    raise InvalidAccessToken unless session[:access_token].present?
  end
end
