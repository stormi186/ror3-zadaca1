require_relative 'product'

class Phone < Product
	attr_accessor :specs
  
  $expensive = 0
  $cheap = 0
  $avaiable = 0
  $android = 0
  $bluetooth = 0

	def initialize(model, price, in_stock, specs)
		super(model, price, in_stock)
		@specs = specs
    
    price > 1000 ? $expensive+=1 : $cheap+=1
    $avaiable+=1 if in_stock
    $android+=1 if specs.value?('android')
    $bluetooth+=1 if specs[:bluetooth]
	end

  def to_s
  	s = 'Specs:'
  	specs.each { |key,value| s = "#{s}\n\t#{key}: #{value}" }
  	"#{super.to_s}\n#{s}\n______________________\n\n"
  end
end
