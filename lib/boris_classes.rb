class Bike
  def working?
      true
  end
end

class DockingStation
  attr_reader (:empty)
  def initialize(empty)
    @empty = empty
  end

  def release_bike
    Bike.new
  end

  def dock_bike
    if @empty == 10
      return "There is already a bike here"
    elsif @empty < 10
      @empty += 1
      return "The bike has been docked"
    end
  end
end
