class Profile < ApplicationRecord
  belongs_to :user
  has_many :profile_areas, dependent: :destroy
  has_many :areas_of_interest, through: :profile_areas, source: :area_of_interest

end
