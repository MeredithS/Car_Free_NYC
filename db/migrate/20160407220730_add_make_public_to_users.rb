class AddMakePublicToUsers < ActiveRecord::Migration
  def change
    add_column :users, :make_public, :boolean
  end
end
