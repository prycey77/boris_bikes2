require 'boris_classes'

describe Bike do
    describe 'a method that asks if a bike is working' do
        it 'responds to the method "working?"' do
            bike = Bike.new
            expect(bike).to respond_to(:working?)
        end
    end
end