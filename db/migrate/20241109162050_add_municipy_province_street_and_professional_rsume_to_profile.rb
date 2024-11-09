class AddMunicipyProvinceStreetAndProfessionalRsumeToProfile < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :municipy, :string
    add_column :profiles, :province, :string
    add_column :profiles, :street, :string
    add_column :profiles, :professional_resume, :text
  end
end
