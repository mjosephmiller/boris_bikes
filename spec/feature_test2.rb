require './lib/docking_station.rb'

p "Releasing a bike that is not broken"
station = DockingStation.new
10.times{station.dock(Bike.new)}
station.report_broken
p "We have these bikes in our station:"
p station.get_bikes
bmx = station.release_bike
p "Our released bike is #{bmx}"
