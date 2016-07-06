require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    Bike.new
    raise "Error, no bikes available."
  end

  def dock(bike)
    @bike = bike
  end

end
