require "docking_station"

describe DockingStation  do
  it { is_expected.to respond_to(:release_a_bike) }
  it { is_expected.to respond_to(:dock_a_bike).with(1).argument }
  it { is_expected.to respond_to(:bike) }

  describe '#release_a_bike' do
    it 'releases a bike if present else returns an error message' do
      expect { subject.release_a_bike }.to raise_error("No bikes available")
    end

    it 'Releases working bikes' do
      bike = Bike.new
      subject.dock_a_bike(bike)
      expect(bike).to be_bike_is_working
    end
  end

  it 'Docks a bike' do
    bike = Bike.new
    expect(subject.dock_a_bike(bike)).to eq bike
  end

  it 'returns the docked bike' do
    bike = Bike.new
    subject.dock_a_bike(bike)
    expect(subject.bike).to eq bike
  end
end
