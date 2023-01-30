class OrdersController < ApplicationController

  def create
    current_order.add_item(
      product_id: params[:product_id],
      quantity: params[:quantity]
    )
  end

  def destroy
    current_order.remove_item(id: params[:id])
  end

end