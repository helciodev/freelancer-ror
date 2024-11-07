class UserProfilePageController < ApplicationController
  def index
    @user = current_user
    @show_profile_incomplete_modal = @user.profile_completion_percentage < 70
  end
end
