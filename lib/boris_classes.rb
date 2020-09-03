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
    if @empty > 0
      Bike.new
    else 
    raise Exception.new "There are no bikes."
    end
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
