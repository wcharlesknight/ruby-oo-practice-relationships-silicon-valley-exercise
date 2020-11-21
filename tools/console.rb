require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

viva = Startup.new("Viva", "Hunter", "www.viva.com")
blizzard = Startup.new("Blizzard", "Charlie", "www.blizzard.com")
starcraft = Startup.new("starcraft", "tim cook", "www.starcraft.com")

chuck = VentureCapitalist.new("chuck", 10000000000)
larry =  VentureCapitalist.new("larry", 20000000000)
buster = VentureCapitalist.new("buster", 30000000000)
poor_dude = VentureCapitalist.new("john", 10)

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

viva.pivot("www.posey.com","posey")
viva.sign_contract("chuck", "seed", 50000)
viva.find_by_founder("Hunter")

binding.pry
0 #leave this here to ensure binding.pry isn't the last line