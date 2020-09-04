require "boris_classes"


describe DockingStation do
  station = DockingStation.new
  it "responds to releasing a bike from docking station" do
    expect(DockingStation.new).to respond_to(:release_bike) #DockingStation.new is the object of the class
  end

  #it 'Checks to see if the bike is working' do
  #station = DockingStation.new
  # bike = station.release_bike
  #expect(station.release_bike.working?).to eq true
  #end

  it "responds to a bike being docked" do
    expect(DockingStation.new).to respond_to :dock_bike
  end
  #it "Won't all a bike to dock if station is full" do
  #  station = DockingStation.new(10)
  # expect(station.dock_bike).to eq "There is already a bike here"
  #end
  it "raises an error if the station is empty" do
    station = DockingStation.new
    expect { station.release_bike }.to raise_error "There are no bikes."
  end

  describe "#dock_bike" do
    
    it "checks that 20 bikes can be released" do
      DockingStation::DEFAULT_CAPACITY.times do
      subject.dock_bike Bike.new
      end
      expect { subject.dock_bike Bike.new }.to raise_error "This docking station is full"
    
    end
  end
end
