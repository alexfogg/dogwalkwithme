class AddUsersTable < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.text :address
      t.string :phone
      t.string :email
      t.text :image
      t.string :gender
      t.integer :age
      t.boolean :is_admin, :default => false
      t.timestamps
    end
  end
end
