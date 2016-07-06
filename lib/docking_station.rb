require_relative 'bike'

class DockingStation
  def initialize
    @bikes = []
  end

  def full?
    @bikes.length >= 20
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking Station is full" if @bikes.count >= 20
    @bikes << bike
  end
  attr_reader :bikes
end
