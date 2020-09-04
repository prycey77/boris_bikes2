class Bike
  
  def working?
      true
  end
end

class DockingStation
  attr_reader :bike
  def initialize
    
    @bike = []
  end

  def release_bike
    fail "There are no bikes." if @bike.length == 0
    @bike.pop
    
  end

  def dock_bike(bike)
    if @bike >= 20
      fail "This docking station is full"
    elsif @bike < 20
      @bike << Bike.new
      return "The bike has been docked"
    end
  end
end
