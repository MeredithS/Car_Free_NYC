class RemoveShareInfoFromUsers < ActiveRecord::Migration
  def change
  end
    def up
    remove_column :users, :share_info?, :boolean
  end
  def down
    add_column :users, :share_info?, :boolean
  end
end
