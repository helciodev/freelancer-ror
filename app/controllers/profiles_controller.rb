class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)
    if @profile.save
      redirect_to user_dashboard_path, notice: "Profile successfully created."
    else
      render :new
    end
  end

  def edit
    @profile = current_user.profile
  end

  def update
    @profile = current_user.profile
    if @profile.update(profile_params)
      redirect_to user_dashboard_path, notice: "Profile successfully updated."
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:current_position, :academic_title, :areas_of_interest, :years_of_experience, :link_to_resume, :idioms, :profile_picture)
  end
end
