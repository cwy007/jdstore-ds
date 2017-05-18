class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_required
  layout 'admin'

  def index
    @orders = Order.order("id DESC")
  end

  def show
    @order = Order.find_by_token(params[:id])
    @product_lists = @order.product_lists
  end

  def cancel
    @order = Order.find_by_token(params[:id])
    @order.cancel_order
    redirect_to :back
  end

  def ship
    @order = Order.find_by_token(params[:id])
    @order.ship!
    redirect_to :back
  end

  def deliver
    @order = Order.find_by_token(params[:id])
    @order.deliver!
    redirect_to :back
  end

  def return
    @order = Order.find_by_token(params[:id])
    @order.return_good!
    redirect_to :back
  end

end
