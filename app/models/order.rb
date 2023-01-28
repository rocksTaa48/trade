class Order < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  #validates :cart_id, :quantity, presence: true
end
