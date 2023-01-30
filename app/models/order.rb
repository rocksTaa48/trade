class Order < ApplicationRecord
  belongs_to :product
  belongs_to :cart


  def subtotal
    product.price * quantity
  end

  #validates :cart_id, :quantity, presence: true
end
