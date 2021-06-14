# Get a list of all lifters

# Get a list of all the memberships that a specific lifter has

# Get a list of all the gyms that a specific lifter has memberships to

# Get the average lift total of all lifters

# Get the total cost of a specific lifter's gym memberships

# Given a gym and a membership cost, sign a specific lifter up for a new gym

class Lifter
  attr_reader :name, :lift_total
  @@all = []
  @@all_lift_total = 0

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all_lift_total += lift_total 
    @@all << self
  end

  def self.all
    @@all
  end
  
  def memberships
    Membership.all.select{|membership| membership.lifter == self}
  end

  def gyms
    self.memberships.map{|membership| membership.gym}
  end

  def self.ave_lift_total
    num = self.all.length
    @@all_lift_total / num
  end

  def total_cost
    total = 0
    self.memberships.each{|membership| total += membership.cost}
    total
  end

  def new_membership(gym, cost)
    Membership.new(cost, gym, self)
  end

end
