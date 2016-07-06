require 'docking_station'

describe DockingStation do

  it 'has a default capacity' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end

  describe 'initialization' do
    it 'has a variable capacity' do
      docking_station = DockingStation.new(50)
      50.times { docking_station.dock Bike.new }
      expect{ docking_station.dock Bike.new }.to raise_error 'Docking Station is full'
    end
    subject { DockingStation.new }
    let(:bike) { Bike.new }
    it 'defaults capacity'do
      described_class::DEFAULT_CAPACITY.times do
        subject.dock(bike)
      end
      expect{ subject.dock(bike) }.to raise_error 'Docking Station is full'
    end
  end

  it { is_expected.to respond_to(:release_bike) }

    describe '#release_bike' do
      it 'releases a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
      it 'raises an error when there are no bikes available' do
        expect { subject.release_bike }.to raise_error 'No bikes available'
      end
    end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bikes) }

  describe '#dock' do
    it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end
    it 'raises an error when dock is full' do
      subject.capacity.times { subject.dock(Bike.new) }
      expect { subject.dock(Bike.new) }.to raise_error "Docking Station is full"
    end
  end

  it { is_expected.to respond_to(:full?) }

  describe '#full?' do
    it 'returns false when not full' do
      expect(subject.full?).to be false
    end
    it 'returns true when full' do
      20.times { subject.dock(Bike.new) }
      expect(subject.full?).to be true
    end
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end

end
