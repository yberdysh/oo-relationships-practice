class Listing
  attr_accessor :city_name
  @@all = []
  def initialize(city_name)
    @city_name = city_name
    @@all << self
  end

  def self.all
    @@all
  end

  def trips
    Trip.all.select { |trip| trip.listing == self }
  end

  def guests
    trips.map { |trip| trip.guest }
  end

  def trip_count
    trips.count
  end

  def self.find_all_by_city(city)
    self.all.select { |listing| listing.city_name == city }
  end

  def self.most_popular
    # famous = self.all[0] # first listing
    # max = famous.trip_count #has the max num
    # self.all.each do |listing|
    #   if listing.trip_count > max
    #     max = listing.trip_count
    #     famous = listing
    #   end
    # end
    # return famous

    self.all.max_by{|listing| listing.trip_count}
  end


end
# - .most_popular
#   - finds the listing that has had the most trips
