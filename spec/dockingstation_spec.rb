require 'boris_classes'

describe DockingStation do
  station = DockingStation.new(0)
  it 'responds to releasing a bike from docking station' do
    expect(DockingStation.new).to respond_to(:release_bike) #DockingStation.new is the object of the class
  end

  it 'Checks to see if the bike is working' do
  station = DockingStation.new(1)
  # bike = station.release_bike
  expect(station.release_bike.working?).to eq true
  end
  
  it 'responds to a bike being docked' do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end
 #it "Won't all a bike to dock if station is full" do
  #  station = DockingStation.new(10)
   # expect(station.dock_bike).to eq "There is already a bike here"
  #end
  it 'raises an error if the station is empty' do
    station = DockingStation.new(0)
    expect {station.release_bike}.to raise_error
  end
  end
