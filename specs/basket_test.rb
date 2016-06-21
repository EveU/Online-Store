require('minitest/autorun')
require_relative('../basket')
require_relative('../product')

class TestBasket < Minitest::Test

  def setup
    @b = Basket.new
    @p1 = Product.new('001', 'Scotland Flag', 20.00, 'Zero')
    @p2 = Product.new('002', 'Children\'s Car Seat', 33.90, 'Reduced')
    @p3 = Product.new('003', 'Magnetic Wrist Band', 9.00, 'Standard')
    
  end

  def test_basket_initial_state
    assert_equal(0, @b.number_of_items, "Basket is not empty")
  end

  def test_basket_scan_item
    @b.scan(@p1)
    assert_equal(1, @b.number_of_items, "Basket does not contain 1 item")
  end

end
