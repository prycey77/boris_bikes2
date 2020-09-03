class Bike
  def working?
      true
  end
end

class DockingStation
  attr_reader (:empty)
  def initialize(empty=0)
    @empty = empty
  end

  def release_bike
    if @empty == 0
      raise Exception.new "There are no bikes."
    else
      Bike.new
    end
  end

  def dock_bike
    if @empty == 10
      fail "This docking station is full"
    elsif @empty < 10
      @empty += 1
      return "The bike has been docked"
    end
  end
end
