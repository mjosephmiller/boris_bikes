require './lib/docking_station'

puts "station = DockingStation.new"
station = DockingStation.new

puts "bmx = station.release_bike"
bmx = station.release_bike

puts "bmx.working?"
bmx.working?

puts "station.dock(bmx)"
station.dock(bmx)

puts "station.bike"
station.bike
