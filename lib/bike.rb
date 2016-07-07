class Bike

  def initialize
    @working = true
  end

  def check_working?
    working?
  end

  def reported_broken
    @working = false
  end

  private

  def working?
    @working
  end
end
