module UserProfilePageHelper

 def user_profile_image_or_generic_image(user)

  # @user.profile_pic.present? && @user.profile_pic || 'user.png'

   if user.profile_picture.attached?
     user.profile_picture

   else

    "user.png"
   end


 end

 def user_name
   current_user.first_name + ' ' + current_user.last_name
 end
end
