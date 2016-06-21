class Basket
  attr_reader :subtotal, :vat_total
  def initialize
    @items = []
    @subtotal = 0
    @vat_total = 0
  end

  def number_of_items
    @items.length
  end

  def scan(item)
    @items << item
    self.update_subtotal(item)
    self.update_vat(item)
  end

  def update_subtotal(item)
    @subtotal += item.price
  end

  def update_vat(item)
    rate = self.get_vate_rate(item)
    vat_amount = (item.price * rate).round(2)
    @vat_total += vat_amount
  end

  def get_vate_rate(item)
    if item.vat_rate == 'Zero'
      return 0
    elsif item.vat_rate == 'Reduced'
      return 0.05
    elsif item.vat_rate == 'Standard'
      return 0.20
    end
  end
end