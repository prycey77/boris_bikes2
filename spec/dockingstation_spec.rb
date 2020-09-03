require 'DockingStation'
require 'Bike'

describe DockingStation do
  describe 'release_bike' do
    it 'responds to releasing a bike from docking station' do
      expect(DockingStation.new).to respond_to(:release_bike) #DockingStation.new is the object of the class
    end

    it 'Checks to see if the bike is working' do
    # station = DockingStation.new
    # bike = station.release_bike
    
    expect(subject.release_bike.working?).to eq true
  end
  end
end
