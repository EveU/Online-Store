require('minitest/autorun')
require_relative('../basket')

class TestBasket < Minitest::Test

  def setup
    @b = Basket.new
  end

  def test_basket_initial_state
    assert_equal(0, @b.number_of_items, "Basket is not empty")
  end

end