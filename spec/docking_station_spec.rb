require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it { is_expected.to respond_to(:dock).with(1).argument }

  it 'releases working bike' do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it 'returns exception when "release_bike" errors' do
      expect{subject.release_bike}.to raise_error("Error, no bikes available.")
    end
  end

  describe '#dock' do
    it 'raises an error when capacity full' do
      subject.dock(Bike.new)
      expect {subject.dock(Bike.new)}.to raise_error("Error, docking station at full capacity.")
    end
  end
end
