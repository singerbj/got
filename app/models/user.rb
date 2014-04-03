class User < ActiveRecord::Base
  attr_accessible :name, :c1, :c2, :c3, :c4, :c5

  def total_points
  @c1 = Character.find(self.c1)
  @c2 = Character.find(self.c2)
  @c3 = Character.find(self.c3)
  @c4 = Character.find(self.c4)
  @c5 = Character.find(self.c5)

  @c1.total_points + @c2.total_points + @c3.total_points + @c4.total_points + @c5.total_points
  end
end
