require_relative 'phone'

class Store
	attr_accessor :name, :street, :website, :phones

	STARS = '*************************'

	def initialize(name, street, website, phones = [])
		@name = name
		@street = street
		@website = website
		@phones = phones
	end

	def to_s
		"#{STARS}\nName: #{name}\nStreet: #{street}\n" \
		"Website: #{website}\nTotal phones: #{phones.count}\n" \
		"Total phones in stock: #{$avaiable}\n#{STARS}"
	end
end