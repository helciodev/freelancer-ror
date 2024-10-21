class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :profile, dependent: :destroy
  validates :first_name, :last_name, presence: true
  validates :cellphone, format: {
    with: /\A(9[1-6]\d{7}|\+244\d{9})\z/,
    message: "Deve ser um número de telemóvel válido"
  }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
