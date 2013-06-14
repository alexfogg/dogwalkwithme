class AddDiscussionsTable < ActiveRecord::Migration
  def change
    create_table :discussions do |t|
      t.string :title
      t.integer :walk_id
      t.timestamp
    end
  end
end