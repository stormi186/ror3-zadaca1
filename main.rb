require_relative 'store'

EQUALS = " \n===================\n"

store = Store.new('Univerzalno.ba', 'Milana Preloga 12', 'www.univerzalno.com')

phone1 = Phone.new('Iphone 7', 1500, true, { 
	memory: '64gb', 
	ram: '2gb', 
	camera: '12mp', 
	bluetooth: true, 
	os: 'ios' 
})
phone2 = Phone.new('LG G3', 450, true, { 
	memory: '3gb', 
	ram: '3gb', 
	camera: '12mp', 
	bluetooth: true, 
	os:'android' 
})
phone3 = Phone.new('Samsung Galaxy S8', 1200, true, { 
	memory: '32gb', 
	ram: '3gb', 
	camera: '18mpx', 
	bluetooth: true, 
	os: 'android' 
})
phone4 = Phone.new('Nokia 3310', 200, false, { 
	memory: '64gb', 
	ram: '500mb', 
	camera: '12mpx', 
	bluetooth: false, 
	os: 'nokia os' 
})

store.phones << phone1 << phone2 << phone3 << phone4

puts store

puts "Expensive phones: #{$expensive}#{EQUALS}"
store.phones.each do |phone|
	puts "#{phone}" if phone.price > 1000
end

puts "Cheap phones: #{$cheap}#{EQUALS}"
store.phones.each do |phone|
	puts "#{phone}" if phone.price < 1000
end

puts "Android phones: #{$android}#{EQUALS}"
store.phones.each do |phone|
	puts "#{phone}" if phone.specs.value?('android')
end

puts "Phones with bluetooth: #{$bluetooth}#{EQUALS}"
store.phones.each do |phone|
	puts "#{phone}" if phone.specs[:bluetooth]
end

puts "Avaiable phones: #{$avaiable}#{EQUALS}"
store.phones.each do |phone|
	puts "#{phone}" if phone.in_stock
end

