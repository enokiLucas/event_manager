=begin
if File.exist? "event_attendees.csv"
	contents = File.read('event_attendees.csv')
	lines = File.readlines('event_attendees.csv')

end

lines.each_with_index do |line,index|
	next if index == 0
	columns = line.split(",")
	name = columns[2]
	p name
end
=end

require 'csv'
puts 'EventManager initialized.'

contents = CSV.open('event_attendees.csv', headers: true)
contents.each do |row|
  name = row[2]
  puts name
end