class Basket
  attr_reader :subtotal
  def initialize
    @items = []
    @subtotal = 0
  end

  def number_of_items
    @items.length
  end

  def scan(item)
    @items << item
    self.update_subtotal(item.price)
  end

  def update_subtotal(item_price)
    @subtotal += item_price
  end
end