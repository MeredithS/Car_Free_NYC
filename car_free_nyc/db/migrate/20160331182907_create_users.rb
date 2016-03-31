class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :f_name
    	t.string :l_name
    	t.string :e_mail
    	t.text :commitment
    	t.string :org
    	t.timestamp :date
    	t.boolean :share_info?
    end
  end
end
