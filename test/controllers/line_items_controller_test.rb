require 'test_helper'

class LineItemsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @line_item = line_items(:one)
    @cart = carts(:first_cart)
    @line_item.update(cart: @cart)
  end
  
  test "should create line_item" do
    assert_difference('LineItem.count') do
       post line_items_path, params: { product_id: products(:ruby).id }
    end
    assert_redirected_to cart_path(assigns(:line_item).cart)
  end
  test "should update line_item" do
    put line_item_path(@line_item),
      params: { line_item: { product_id: @line_item.product_id } }
    
    assert_redirected_to line_item_path(@line_item)
  end
end
