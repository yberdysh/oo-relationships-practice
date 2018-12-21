class Guest
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def listings
    trips.map { |trip| trip.listing }
  end

  def trips
    Trip.all.select { |trip| trip.guest == self }
  end

  def self.find_all_by_name(name)
    self.all.select { |guest| guest.name == name }
  end

  def trip_count
    trips.count
  end

  def self.pro_traveller
    # a = Hash.new(0)
    # Trip.all.each do |guest|
    #   a[guest].guest += 1
    # end
    self.all.select { |guest| guest.trip_count > 1 }
  end
end



# - .pro_traveller
#   - returns an array of all guests who have made over 1 trip
