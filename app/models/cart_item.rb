class CartItem < ApplicationRecord
  belongs_to :item
  belongs_to :customer

  def subtotal
     with.tax_price * amount
  end
end
