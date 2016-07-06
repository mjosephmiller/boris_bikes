require 'docking_station'

describe DockingStation do

  it 'Releases a working bike' do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:bikes) }

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

  describe '#release_bike' do
    it { is_expected.to respond_to(:release_bike) }

    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises an error when no bikes availabe' do
      expect{subject.release_bike}.to raise_error("Error, no bikes available.")
    end
  end

  describe '#dock' do
    it { is_expected.to respond_to(:dock).with(1).argument }

    it 'raises an error when capacity full' do
      DockingStation::DEFAULT_CAPACITY.times { subject.dock(Bike.new) }
      expect {subject.dock(Bike.new)}.to raise_error("Error, docking station at full capacity.")
    end

    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
  end
end
