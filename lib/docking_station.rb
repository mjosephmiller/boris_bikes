require_relative 'bike'

class DockingStation
#attr_reader :number_bikes
#  def initialize(number_bikes)
#    @number_bikes = number_bikes
#  end
  def release_bike
    Bike.new
  end
  def dock(bike)
  end
end
