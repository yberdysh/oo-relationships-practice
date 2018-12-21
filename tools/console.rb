require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

ny = Listing.new("New York")
flat = Listing.new("Flatiron")
bk = Listing.new("Brooklyn")
ny2 = Listing.new("New York")


k = Guest.new("Kah")
j = Guest.new("Jane")
d = Guest.new("Dog")
z = Guest.new("Kah")

v1 = Trip.new(ny, k)
v2 = Trip.new(ny, j)
v3 = Trip.new(flat, k)
v4 = Trip.new(bk, d)




Pry.start
