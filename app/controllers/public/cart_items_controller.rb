class Public::CartItemsController < ApplicationController
  def index
    @cart_items = Cart_Item.all
  end
  def create
    binding.pry
    @cart_item = Cart_Item.new(cart_item_params)
    @cart_item.save
    redirect_to cart_items_path
  end

  private

  def cart_item_params
      params.require(:cart_item).permit(:item_id, :amount)
  end
end
