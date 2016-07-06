require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes

  def initialize
      @bikes = []
  end

  def release_bike
    raise "Error, no bikes available." if empty?
    @bikes.pop
  end

  def dock(bike)
    raise "Error, docking station at full capacity." if full?
    @bikes << bike
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
