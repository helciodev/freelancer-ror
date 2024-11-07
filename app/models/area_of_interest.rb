class AreaOfInterest < ApplicationRecord
  has_many :profile_areas
  has_many :profiles, through: :profile_areas
end
