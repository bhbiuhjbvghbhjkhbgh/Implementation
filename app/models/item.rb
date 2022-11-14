class Item < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_one :customers, through: :cart_items
  has_many :order_details, dependent: :destroy
  has_one :orders, through: :order_details
  belongs_to :genre, optional:true
end
