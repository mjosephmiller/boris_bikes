require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :capacity

  def initialize(capacity = DEFAULT_CAPACITY)
      @bikes = []
      @capacity = capacity
  end

  def working_bikes?
    @bikes.each do |bike|
      if bike.check_working?
        return true
      else
        return false
      end
    end
  end

  def release_bike

    raise "Error, no bikes available." if empty?

    raise "Error, no working bikes available." if !working_bikes?

    @bikes.reverse.each do |bicycle|
        p '----'
        p "bicycle is #{bicycle}. This bicycle is #{bicycle.check_working?}"
        p '------'
        if bicycle.check_working?
          working_bike = bicycle
          p '----'
          p "working bike is #{working_bike}. This bicycle is #{working_bike.check_working?}"
          p '-----'
          @bikes.delete(bicycle)
          return working_bike
        end
      #  raise "Error, no working bikes available."
    end
  end

  def dock(bike)
    raise "Error, docking station at full capacity." if full?
    @bikes << bike
  end

  def report_broken
    @bikes[-1].reported_broken
  end

  def get_bikes
    @bikes
  end

  private
  attr_reader :bikes

  def full?
    @bikes.count >= capacity
  end

  def empty?
    @bikes.empty?
  end
end
