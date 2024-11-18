class AreaOfInterest < ApplicationRecord
  has_many :profile_areas, dependent: :destroy
  has_many :profiles, through: :profile_areas
end
