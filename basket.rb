class Basket
  def initialize
    @items = []
  end

  def number_of_items
    @items.length
  end

  def scan(item)
    @items << item
  end
end