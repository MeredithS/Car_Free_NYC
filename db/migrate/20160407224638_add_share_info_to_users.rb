class AddShareInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :share_info, :boolean
  end
end
