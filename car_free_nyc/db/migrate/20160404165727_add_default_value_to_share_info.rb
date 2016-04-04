class AddDefaultValueToShareInfo < ActiveRecord::Migration
  def change
  end
  def up
    change_column :users, :share_info?, :boolean, :default => true
end
  def down
    change column :users, :share_info?, :boolean, :default => nil
  end
end 
