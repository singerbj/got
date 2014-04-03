class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :name
      t.integer :c1
      t.integer :c2
      t.integer :c3
      t.integer :c4
      t.integer :c5
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
