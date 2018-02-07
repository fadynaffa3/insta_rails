class InstagramFeedsController < ApplicationController
  before_action :validate_instagram_token

  def show
    client = Instagram.client(access_token: session[:access_token])
    @user  = client.user
    @media = client.user_recent_media
  end
end
