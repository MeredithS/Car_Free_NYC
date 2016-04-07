class RemoveInfoColumnsFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :info, :string
    remove_column :users, :share_info?, :boolean
  end
end
