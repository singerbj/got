class Character < ActiveRecord::Base
  attr_accessible :storm_of_swords, :feast_for_crows, :breaking_the_law, :bolton_knows_best, :best_served_cold, :in_littlefingers_brothel, :you_win_or_you_die, :name

def total_points
  self.storm_of_swords + self.feast_for_crows + self.breaking_the_law + self.bolton_knows_best + self.best_served_cold + self.in_littlefingers_brothel + self.you_win_or_you_die 
end

end
