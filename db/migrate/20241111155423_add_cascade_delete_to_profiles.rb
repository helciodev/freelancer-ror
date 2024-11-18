class AddCascadeDeleteToProfiles < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :profiles, :users  # Remove the old foreign key
    add_foreign_key :profiles, :users, on_delete: :cascade  # Add the new foreign key with cascading delete
  end

end
