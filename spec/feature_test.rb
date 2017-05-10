require './lib/docking_station.rb'

dock = DockingStation.new
bike = Bike.new
bike2 = Bike.new

# It docks a bike
p "pass" if dock.dock_a_bike(bike)

# It releases a working bike
p "pass" if bike.bike_is_working?

# It does not dock more bikes than capacity
p "pass" if dock.dock_a_bike(bike) && dock.dock_a_bike(bike2)

# It can dock multiple bikes
p "pass" if 20.times { dock.dock_a_bike(Bike.new) }
