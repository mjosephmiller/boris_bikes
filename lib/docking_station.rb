require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
      @bikes = []
  end

  def release_bike
    raise "Error, no bikes available." if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Error, docking station at full capacity." if @bikes.count >= 20
    @bikes << bike
  end
end
