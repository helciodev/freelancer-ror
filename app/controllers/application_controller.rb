class ApplicationController < ActionController::Base

  protected

  def after_sign_in_path_for(resource)

      profile_index_path

  end

  def after_sign_out_path_for(resource)
    new_user_session_path # Redirect to the login page after logout
  end

end
