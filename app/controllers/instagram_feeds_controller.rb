class InstagramFeedsController < ApplicationController
  def show
    return unless current_user.has_instagram
    flash[:error] = 'Please Connect your Instagram'
    redirect_to instagram_connect_path
  end
end
