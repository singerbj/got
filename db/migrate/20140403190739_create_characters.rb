class CreateCharacters < ActiveRecord::Migration
  def self.up
    create_table :characters do |t|
      t.integer :storm_of_swords
      t.integer :feast_for_crows
      t.integer :breaking_the_law
      t.integer :bolton_knows_best
      t.integer :best_served_cold
      t.integer :in_littlefingers_brothel
      t.integer :you_win_or_you_die
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :characters
  end
end
