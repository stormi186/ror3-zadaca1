class Product
	attr_accessor :model, :price, :in_stock

	def initialize(model, price, in_stock)
		@model = model
		@price = price
		@in_stock = in_stock
	end

	def to_s
		"Model: #{model} \nPrice: #{price} $\n"
	end
end