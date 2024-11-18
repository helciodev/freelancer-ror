class CreateIdioms < ActiveRecord::Migration[7.1]
  def change
    create_table :idioms do |t|
      t.string :name
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
