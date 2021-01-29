class OrdersController < ApplicationController

  def new
    @order = Order.new
    @customers = Customer.all
  end

  def create
    flash[:notice] = "Order has been created"
    order = Order.new(resource_params)
    order.save
    redirect_to orders_path
  end

  def index
    @orders = Order.search(params[:search]).page(params[:page])
    @customers = Customer.all
  end

  def edit
    @order = Order.find(params[:id])
    @customers = Customer.all
  end

  def update
    flash[:notice] = "Order has been updated"
    order = Order.find(params[:id])
    order.update(resource_params)
    redirect_to orders_path
  end

  def show
    @order = Order.find(params[:id])
    @customers = Customer.all
  end

  def destroy
    flash[:notice] = "Order has been deleted"
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to orders_path
  end

  private

  def resource_params
    params.require(:order).permit(:name, :customer_id)
  end




end
