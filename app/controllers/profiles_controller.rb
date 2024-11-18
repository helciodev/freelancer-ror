class ProfilesController < ApplicationController
  before_action :authenticate_user!

  def new
    @profile = current_user.build_profile
  end

  def create
    @profile = current_user.build_profile(profile_params)

    if @profile.save
      redirect_to profile_index_path, notice: "Perfil criado com sucesso."
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
      redirect_to profile_index_path, notice: "Perfil actualizado com sucesso."
    else
      render :edit
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:current_position, :academic_title, :years_of_experience, :link_to_resume, :municipy, :province, :street, areas_of_interest_ids: [])
  end
end
