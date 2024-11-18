class AddLinkedInLinkToProfile < ActiveRecord::Migration[7.1]
  def change
    add_column :profiles, :linked_In_link, :string
  end
end
