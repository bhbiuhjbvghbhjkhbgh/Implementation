class Public::OrdersController < ApplicationController
  def new
    @order = Order.new
  end

  def create
    cart_items = current_customer.cart_items.all
    @order = current_customer.orders.new(order_params)
    if @order.save
      cart_items.each do |cart|
        order_detail = OrderDetail.new
        order_detail.item_id = cart.item_id
        order_detail.order_id = @order.id
        order_detail.amount = cart.amount
        order_detail.save
      end
      redirect_to public_orders_confirm
      cart_items.destroy_all
    else
      @order = Order.new(order_params)
      render :new
    end
  end

  def index
  end

  def show
  end

  def confirm
  @order = Order.new(order_params)
  binding.pry
  end

  private

  def order_params
    params.require(:order).permit(:payment_method)
  end
end
