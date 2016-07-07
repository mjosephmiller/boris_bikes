require './lib/docking_station.rb'

station = DockingStation.new
10.times{station.dock(Bike.new)}
station.report_broken
station.get_bikes
bmx = station.release_bike
p "Our released bike is #{bmx}"
