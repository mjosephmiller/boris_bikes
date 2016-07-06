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
