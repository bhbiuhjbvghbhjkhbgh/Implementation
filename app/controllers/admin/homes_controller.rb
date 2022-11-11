class Admin::HomesController < ApplicationController
  def top
    @order_details = Order_Detail.all
  end
end
