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

  def test_basket_subtotal
    assert_equal(0, @b.subtotal, "Subtotal is not 0")
  end

  def test_basket_update_subtotal
    @b.scan(@p1)
    assert_equal(20.00, @b.subtotal, "Subtotal is not 20.00")
  end

  def test_basket_update_vat_standard
    @b.scan(@p3)
    assert_equal(1.80, @b.vat_total, "VAT total is not 1.80")
  end

  def test_basket_update_vat_reduced
    @b.scan(@p2)
    assert_equal(1.70, @b.vat_total, "VAT total is not 1.70")
  end

  def test_basket_update_vat_zero
    @b.scan(@p1)
    assert_equal(0, @b.vat_total, "VAT total is not 0")
  end

  def test_add_multiple_items
    @b.scan(@p1)
    @b.scan(@p2)
    @b.scan(@p3)
    assert_equal(3, @b.number_of_items, "Basket does not contain 3 items")
    assert_equal(62.90, @b.subtotal, "Subtotal does not equal 62.90")
    assert_equal(3.50, @b.vat_total, "VAT total does not equal 3.50")
  end
end
