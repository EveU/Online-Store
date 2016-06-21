require('minitest/autorun')
require_relative('../basket')

class TestBasket < Minitest::Test

  def setup
    @b = Basket.new
  end

  def test_basket_initial_state
    assert_equal(0, @b.number_of_items, "Basket is not empty")
  end

  def test_basket_scan_item
    item1 = "Scotland Flag"
    @b.scan(item1)
    assert_equal(1, @b.number_of_items, "Basket does not contain 1 item")
  end

end