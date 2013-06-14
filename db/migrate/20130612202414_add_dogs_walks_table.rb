class AddDogsWalksTable < ActiveRecord::Migration
  def change
    create_table :dogs_walks, :id => false do |t|
      t.integer :dog_id
      t.integer :walk_id
    end
  end
end
