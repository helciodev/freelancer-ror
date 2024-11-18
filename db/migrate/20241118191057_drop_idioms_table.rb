class DropIdiomsTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :idioms
  end

  def down
    create_table :idioms do |t|
      t.string :name
      t.references :profile, null: false, foreign_key: true

      t.timestamps
    end
  end
end
