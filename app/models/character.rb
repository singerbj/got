class Character < ActiveRecord::Base
  attr_accessible :storm_of_swords, :feast_for_crows, :breaking_the_law, :bolton_knows_best, :best_served_cold, :in_littlefingers_brothel, :you_win_or_you_die, :name

validates :name, :presence => true
validates :storm_of_swords, numericality: { only_integer: true }
validates :feast_for_crows, numericality: { only_integer: true }
validates :breaking_the_law, numericality: { only_integer: true }
validates :bolton_knows_best, numericality: { only_integer: true }
validates :best_served_cold, numericality: { only_integer: true }
validates :in_littlefingers_brothel, numericality: { only_integer: true }
validates :you_win_or_you_die, numericality: { only_integer: true }

def total_points
  self.storm_of_swords + self.feast_for_crows + self.breaking_the_law + self.bolton_knows_best + self.best_served_cold + self.in_littlefingers_brothel + self.you_win_or_you_die 
end

end
