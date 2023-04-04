if File.exist? "event_attendees.csv"
	contents = File.read('event_attendees.csv')
	lines = File.readlines('event_attendees.csv')

end

lines.each do |line|
	columns = line.split(",")
	name = columns[2]
	p name
end