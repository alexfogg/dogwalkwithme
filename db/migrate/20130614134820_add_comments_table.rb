class AddCommentsTable < ActiveRecord::Migration
  def def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.timestamp
    end
  end
end