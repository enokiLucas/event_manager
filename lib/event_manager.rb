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

def clean_zipcode(zipcode)
	#zipcode.to_s.rjust(5, '0')[0..4]
	if zipcode.nil?
		zipcode = "00000"
	elsif zipcode.length > 5 
		zipcode = zipcode[0..4]
	elsif zipcode.length < 5
		until zipcode.length == 5
			zipcode = "0" << zipcode
		end
	end
end

puts 'EventManager initialized.'

contents = CSV.open('../event_attendees.csv',
	headers: true,
	header_converters: :symbol
)

contents.each do |row|
  name = row[:first_name]

	zipcode = clean_zipcode(row[:zipcode])
	
  puts "#{name} #{zipcode}"
end