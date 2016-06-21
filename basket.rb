class Basket
  attr_reader :subtotal, :total
  def initialize
    @items = []
    @subtotal = 0
    @vat_total = 0
    @total = 0
  end

  def vat_total
    @vat_total.round(2)
  end

  def number_of_items
    @items.length
  end

  def scan(item)
    @items << item
    self.udpate_total(item)
  end

  def update_subtotal(item)
    @subtotal += item.price
  end

  def update_vat(item)
    rate = self.get_vate_rate(item)
    vat_amount = (item.price * rate)
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

  def udpate_total(item)
    self.update_subtotal(item)
    self.update_vat(item)
    @total = @subtotal + vat_total
  end
end