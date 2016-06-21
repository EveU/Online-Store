class Product
  attr_accessor :code, :name, :price, :vat_rate
  def initialize(code, name, price, vat_rate)
    @code = code
    @name = name
    @price = price
    @vat_rate = vat_rate
  end 
end