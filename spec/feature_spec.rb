require './lib/docking_station'

puts "station = DockingStation.new"
station = DockingStation.new

puts "bmx = Bike.new"
bmx = Bike.new

# puts "bmx2 = station.release_bike"
# bmx2 = station.release_bike
#
# puts "bmx.working?"
# bmx.working?
#
# puts "station.dock(bmx)"
# station.dock(bmx)
#
# puts "station.bike"
# station.bike
#
# puts "station.dock(bmx)"
# station.dock(bmx)
#
# puts "bmx2 = station.release_bike"
# bmx2 = station.release_bike

puts "Test: dock 20 bikes into station"
20.times do
  station.dock(Bike.new)
end

puts "Testing the capacity of a station"
stn_0 = DockingStation.new
stn_0.capacity

puts "Changing the default capacity of a new station"
stn_1 = DockingStation.new(100)
stn_1.capacity
