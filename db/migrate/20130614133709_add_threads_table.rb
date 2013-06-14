class AddThreadsTable < ActiveRecord::Migration
  def change
    create_table :threads do |t|
      t.string :title
      t.integer :walk_id
      t.timestamp
    end
  end
end