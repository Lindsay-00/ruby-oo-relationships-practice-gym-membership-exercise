# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

g1 = Gym.new("123")
g2 = Gym.new("456")
g3 = Gym.new("789")

l1 = Lifter.new("outline", 10)
l2 = Lifter.new("timeline", 20)
l3 = Lifter.new("master", 15)
# l4 = Lifter.new(newbie, 40)
# l5 = Lifter.new(config, 50)

m1 = Membership.new(100, g1, l1)
m2 = Membership.new(200, g2, l1)
m3 = Membership.new(150, g3, l1)
m4 = Membership.new(100, g1, l2)
m5 = Membership.new(300, g3, l2)
m6 = Membership.new(500, g1, l3)


binding.pry

puts "Gains!"
