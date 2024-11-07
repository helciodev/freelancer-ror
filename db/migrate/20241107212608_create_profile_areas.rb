class CreateProfileAreas < ActiveRecord::Migration[7.1]
  def change
    create_table :profile_areas do |t|
      t.references :profile, null: false, foreign_key: true
      t.references :area_of_interest, null: false, foreign_key: true

      t.timestamps
    end
  end
end
