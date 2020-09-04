class Bike
  def working?
    true
  end
end

class DockingStation
  attr_reader :bikes
  DEFAULT_CAPACITY = 20
  def initialize
    
    @bikes = []
  end

  def release_bike
    fail "There are no bikes." if empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "This docking station is full" if full?
    @bikes << bike
    return "The bike has been docked"
  end

  private

  def full?
    @bikes.length >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end
end
