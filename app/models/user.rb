class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :profile_picture
  has_one :profile, dependent: :destroy
  validates :first_name, :last_name, presence: true
  validates :cellphone, format: {
    with: /\A(9[1-6]\d{7}|\+244\d{9})\z/,
    message: "Deve ser um número de telemóvel válido"
  }, uniqueness: { case_sensitive: false, message: "já está em uso" }

  before_save :image_size_validation


  private

  def image_size_validation
    if profile_picture.attached? && profile_picture.blob.byte_size > 1.megabyte
      errors.add(:profile_picture, "Demasiado grande. Por favor, faça o upload de uma imagem de até 1MB")
    end
  end


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
