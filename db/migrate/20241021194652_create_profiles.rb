class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :current_position
      t.string :academic_title
      t.string :areas_of_interest
      t.integer :years_of_experience
      t.string :link_to_resume
      t.string :idioms
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
