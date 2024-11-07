class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :profile_pic
  has_one :profile, dependent: :destroy
  validates :first_name, :last_name, presence: true
  validates :cellphone, format: {
    with: /\A(9[1-6]\d{7}|\+244\d{9})\z/,
    message: "Deve ser um número de telemóvel válido"
  }, uniqueness: { case_sensitive: false, message: "já está em uso" }

  before_save :image_size_validation

  def profile_completion_percentage
    # Fields from User and Profile to check for completion
    user_fields = %i[first_name last_name email cellphone gender date_of_birth nationality profile_pic]
    profile_fields = %i[current_position academic_title areas_of_interst years_of_experience link_to_resume idioms] # Add other profile attributes as needed

    # Count completed fields in User
    completed_user_fields = user_fields.count { |field| self.send(field).present? }

    # Count completed fields in Profile, if it exists
    completed_profile_fields = if profile
                                 profile_fields.count { |field| profile.send(field).present? }
                               else
                                 0
                               end

    # Calculate total completion percentage
    total_fields = user_fields.size + profile_fields.size
    total_completed_fields = completed_user_fields + completed_profile_fields

    (total_completed_fields.to_f / total_fields * 100).round
  end

  private

  def image_size_validation
    if profile_pic.attached? && profile_pic.blob.byte_size > 1.megabyte
      errors.add(:image, "is too large. Please upload an image less than 1MB")
    end
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
