require 'DockingStation'

describe 'DockingStation' do
    it 'creates a new DockingStation when the method new is called on it' do
        expect(DockingStation.new).to eq DockingStation.new
    end
end