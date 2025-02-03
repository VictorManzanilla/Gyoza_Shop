require 'minitest/autorun'
require './gyoza_shop'


class TestGyozaShop < Minitest::Test
  def setup
    @gyoza_session = GyozaOrder.new
  end

  def test_add_item
    item = "pork gyoza"  
    @gyoza_session.add_item(item)

    assert_includes @gyoza_session.order, item, "Item was not added to the order" 
   end
end
