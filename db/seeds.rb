# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

professions  = [{ name: 'Advogado' }, { name: 'Contabilista' }, { name: 'Financeiro' }, {name: 'RH' }, {name: 'Formador' }, {name: 'Coach' }, {name: 'Designer' }, {name: 'Comunicólogo' },{name: 'Gestor' }, {name: 'Analista de Crédito' } ]

professions.each do |profession|

  AreaOfInterest.find_or_create_by(profession)
end

idioms = [{ name: 'Português' }, { name: 'Inglês' }, { name: 'Espanhol' }, { name: 'Francês' }]

profile = Profile.create(current_position: 'advogado', academic_title:'Bacharel', years_of_experience:'3', link_to_resume: 'dfdff', province:'Luanda', street:'Almada, 24, 45, 2', professional_resume:'lorem lorem lorem lorem lorem lorem', linked_In_link:'dfdfddf' )

idioms.each do |idiom|
  Idiom.find_or_create_by(name: idiom[:name], profile: profile)
end

# AreaOfInterest.create([{ name: 'Advogado' }, { name: 'Contabilista' }, { name: 'Financeiro' }, {name: 'RH' }, {name: 'Formador' }, {name: 'Coach' }, {name: 'Designer' }, {name: 'Comunic]ólogo' },{name: 'Gestor' }, {name: 'Analista de Crédito' } ])
