module CartHelper

  def products
    @products = cart_orders.joins(:product).all
  end
  
end