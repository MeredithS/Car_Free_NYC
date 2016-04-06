class CreateSocialHandles < ActiveRecord::Migration
  def change
    create_table :social_handles do |t|
    	t.string :twitter
    	t.string :facebook
    	t.string :instagram
    	t.references :user
    end
  end
end
