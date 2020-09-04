class Bike
  def working?
    true
  end
end

class DockingStation
  attr_reader :bike

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no bikes." if @bike.length == 0
    @bikes.pop
  end

  def dock_bike(bike)
    fail "This docking station is full" if @bike.length >= 20
    @bikes << bike
    return "The bike has been docked"
  end
end
