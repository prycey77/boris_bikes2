require 'DockingStation'
describe DockingStation do
  describe 'release_bike' do
    it 'responds to releasing a bike from docking station' do
      expect(DockingStation.new).to respond_to(:release_bike)
    end
  end
end
