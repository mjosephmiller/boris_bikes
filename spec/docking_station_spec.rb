require "docking_station"

describe DockingStation do
    it {  is_expected.to respond_to :release_bike }

    #get a bike, expect it to work
    it 'releases working bikes' do
        bike = subject.release_bike
        expect(bike).to be_working
    end
end
