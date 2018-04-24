require 'test_helper'
class ProductsControllerTest < ActionController::TestCase
 setup do
 @product = products(:one)
 @update = {
 title: 'Lorem Ipsum',
 description: 'Wibbles are fun!',
 image_url: 'ruby.jpg',
 price: 19.95
}
 end

 test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
 end

 test "should get new" do
    get :new
    assert_response :success
 end
          
end
