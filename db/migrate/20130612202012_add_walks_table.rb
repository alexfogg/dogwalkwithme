class AddWalksTable < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.time :time
      t.date :date
      t.text :description
      t.string :neighborhood
      t.float :lat
      t.float :lng
      t.timestamp
    end
  end
end
