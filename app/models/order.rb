class Order < ApplicationRecord
  has_many :order_details, dependent: :destroy
  has_one :items, through: :order_details
  belongs_to :customers
end
