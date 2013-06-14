class AddDiscussionsUsersTable < ActiveRecord::Migration
 def change
    create_table :discussions_users, :id => false do |t|
      t.integer :discussion_id
      t.integer :user_id
    end
  end
end
