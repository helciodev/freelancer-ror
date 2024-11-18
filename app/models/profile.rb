class Profile < ApplicationRecord
  belongs_to :user
  has_many :profile_areas, dependent: :destroy
  has_many :areas_of_interest, through: :profile_areas, source: :area_of_interest


  # Validations for required fields
  validates :current_position, presence: true
  validates :years_of_experience, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, message: "deve ser um número inteiro maior ou igual a 0" }
  validates :link_to_resume, presence: true, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "deve ser uma URL válida" }

  # Validations for optional fields
  validates :academic_title, length: { maximum: 100, message: "não pode ter mais que 100 caracteres" }, presence: true

  validates :municipy, length: { maximum: 50, message: "não pode ter mais que 50 caracteres" }, allow_blank: true
  validates :province, length: { maximum: 50, message: "não pode ter mais que 50 caracteres" }, allow_blank: true
  validates :street, length: { maximum: 100, message: "não pode ter mais que 100 caracteres" }, allow_blank: true
  validates :linked_In_link, format: { with: URI::DEFAULT_PARSER.make_regexp, message: "deve ser uma URL válida" }, allow_blank: true
end
