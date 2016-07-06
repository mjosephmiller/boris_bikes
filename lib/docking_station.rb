require_relative 'bike'

class DockingStation
  attr_reader :bike

  def release_bike
    raise "Error, no bikes available." unless @bike
    @bike
  end

  def dock(bike)
    raise "Error, docking station at full capacity." if @bike
    @bike = bike
  end

end
