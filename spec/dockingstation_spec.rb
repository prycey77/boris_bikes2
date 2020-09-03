require 'DockingStation'
describe DockingStation do
  describe 'release_bike' do
    it 'responds to releasing a bike from docking station' do
      expect(DockingStation.new).to respond_to(:release_bike) #DockingStation.new is the object of the class
    end
  end
end
