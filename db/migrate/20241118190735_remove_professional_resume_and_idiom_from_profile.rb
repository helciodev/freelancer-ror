class RemoveProfessionalResumeAndIdiomFromProfile < ActiveRecord::Migration[7.1]
  def change
    remove_column :profiles, :professional_resume, :text
  end
end
