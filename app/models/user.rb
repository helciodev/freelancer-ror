class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :first_name, :last_name, presence: true, length: {minimum:3, maximum:3}
  validates :cellphone, format: { with: /\A(9[123456]\d{7}|\+244\d{9})\z/, message: "Deve ser um número de telemóvel válido" }

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
