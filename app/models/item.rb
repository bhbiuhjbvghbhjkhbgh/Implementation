class Item < ApplicationRecord

  has_one_attached :image

  has_many :cart_items, dependent: :destroy
  has_one :customers, through: :cart_items
  has_many :order_details, dependent: :destroy
  has_one :orders, through: :order_details
  belongs_to :genre, optional:true

  def with_tax_price
     (price * 1.1).floor
  end
end
