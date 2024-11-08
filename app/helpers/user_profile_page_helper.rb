module UserProfilePageHelper

 def user_profile_image_or_generic_image

  @user.profile_pic.present? && @user.profile_pic || 'user.png'

 end

 def user_name
   current_user.first_name + ' ' + current_user.last_name
 end
end
