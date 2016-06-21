require('minitest/autorun')
require_relative('../product')

class TestBasket < Minitest::Test

  def setup
    @p = Product.new('001', 'Scotland Flag', 20.00, 'Zero')
  end

  def test_product_code
    assert_equal('001', @p.code, "Code does not match")
  end
  
  def test_product_name
    assert_equal('Scotland Flag', @p.name, "Name does not match")
  end

  def test_product_price
    assert_equal(20.00, @p.price, "Price does not match")
  end

  def test_product_vat_rate
    assert_equal('Zero', @p.vat_rate, "VAT rate does not match")
  end

end